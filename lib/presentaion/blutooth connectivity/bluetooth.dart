import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_esc_pos_utils/flutter_esc_pos_utils.dart';
import 'package:flutter_pos_printer_platform_image_3/flutter_pos_printer_platform_image_3.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image/image.dart' as img;
import 'package:p_o_s/commons/profile_varibles.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/constans/dummydata.dart';
import 'package:p_o_s/domain/customers/customers_list.dart';
import 'package:p_o_s/domain/printing%20models/printing_models.dart';
import 'package:p_o_s/infrastructure/bluethooth_print_func.dart';
// import 'image_utils.dart';

class ScreenBluetooth extends StatefulWidget {
  const ScreenBluetooth({super.key});

  @override
  State<ScreenBluetooth> createState() => _ScreenBluetoothState();
}

class _ScreenBluetoothState extends State<ScreenBluetooth> {
  // Printer Type [bluetooth, usb, network]

  @override
  void initState() {
    if (Platform.isWindows) defaultPrinterType = PrinterType.usb;
    super.initState();
    portController.text = port;
    _scan();

    // subscription to listen change status of bluetooth connection
    subscriptionBtStatus =
        PrinterManager.instance.stateBluetooth.listen((status) {
      log(' ----------------- status bt $status ------------------ ');
      currentStatus = status;
      if (status == BTStatus.connected) {
        setState(() {
          isConnected = true;
        });
      }
      if (status == BTStatus.none) {
        setState(() {
          isConnected = false;
        });
      }
      if (status == BTStatus.connected && pendingTask != null) {
        if (Platform.isAndroid) {
          Future.delayed(const Duration(milliseconds: 1000), () {
            PrinterManager.instance
                .send(type: PrinterType.bluetooth, bytes: pendingTask!);
            pendingTask = null;
          });
        } else if (Platform.isIOS) {
          PrinterManager.instance
              .send(type: PrinterType.bluetooth, bytes: pendingTask!);
          pendingTask = null;
        }
      }
    });
    //  PrinterManager.instance.stateUSB is only supports on Android
    subscriptionUsbStatus = PrinterManager.instance.stateUSB.listen((status) {
      log(' ----------------- status usb $status ------------------ ');
      currentUsbStatus = status;
      if (Platform.isAndroid) {
        if (status == USBStatus.connected && pendingTask != null) {
          Future.delayed(const Duration(milliseconds: 1000), () {
            PrinterManager.instance
                .send(type: PrinterType.usb, bytes: pendingTask!);
            pendingTask = null;
          });
        }
      }
    });

    //  PrinterManager.instance.stateUSB is only supports on Android
    // subscriptionTCPStatus = PrinterManager.instance.stateTCP.listen((status) {
    //   log(' ----------------- status tcp $status ------------------ ');
    //   _currentTCPStatus = status;
    // });
  }

  @override
  void dispose() {
    subscription?.cancel();
    subscriptionBtStatus?.cancel();
    subscriptionUsbStatus?.cancel();
    // subscriptionTCPStatus?.cancel();
    portController.dispose();
    ipController.dispose();
    super.dispose();
  }

  // method to scan devices according PrinterType
  void _scan() {
    devices.clear();
    subscription = printerManager
        .discovery(type: defaultPrinterType, isBle: isBle)
        .listen((device) {
      devices.add(BluetoothPrinter(
        deviceName: device.name,
        address: device.address,
        isBle: isBle,
        vendorId: device.vendorId,
        productId: device.productId,
        typePrinter: defaultPrinterType,
      ));
      setState(() {});
    });
  }

  void setPort(String value) {
    if (value.isEmpty) value = '9100';
    port = value;
    var device = BluetoothPrinter(
      deviceName: value,
      address: ipAddress,
      port: port,
      typePrinter: PrinterType.network,
      state: false,
    );
    selectDevice(device);
  }

  void setIpAddress(String value) {
    ipAddress = value;
    var device = BluetoothPrinter(
      deviceName: value,
      address: ipAddress,
      port: port,
      typePrinter: PrinterType.network,
      state: false,
    );
    selectDevice(device);
  }

  void selectDevice(BluetoothPrinter device) async {
    if (selectedPrinter != null) {
      if ((device.address != selectedPrinter!.address) ||
          (device.typePrinter == PrinterType.usb &&
              selectedPrinter!.vendorId != device.vendorId)) {
        await PrinterManager.instance
            .disconnect(type: selectedPrinter!.typePrinter);
      }
    }

    selectedPrinter = device;
    setState(() {});
  }

  // conectar dispositivo
  _connectDevice() async {
    isConnected = false;
    if (selectedPrinter == null) return;
    switch (selectedPrinter!.typePrinter) {
      case PrinterType.usb:
        await printerManager.connect(
            type: selectedPrinter!.typePrinter,
            model: UsbPrinterInput(
                name: selectedPrinter!.deviceName,
                productId: selectedPrinter!.productId,
                vendorId: selectedPrinter!.vendorId));
        isConnected = true;
        break;
      case PrinterType.bluetooth:
        await printerManager.connect(
            type: selectedPrinter!.typePrinter,
            model: BluetoothPrinterInput(
                name: selectedPrinter!.deviceName,
                address: selectedPrinter!.address!,
                isBle: selectedPrinter!.isBle ?? false,
                autoConnect: reconnect));
        break;
      case PrinterType.network:
        await printerManager.connect(
            type: selectedPrinter!.typePrinter,
            model: TcpPrinterInput(ipAddress: selectedPrinter!.address!));
        isConnected = true;
        break;
      default:
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bluetooth'),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          constraints: const BoxConstraints(maxWidth: 400),
          child: SingleChildScrollView(
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: selectedPrinter == null || isConnected
                              ? null
                              : () {
                                  _connectDevice();
                                },
                          child: Text("Connect",
                              style: GoogleFonts.montserrat(),
                              textAlign: TextAlign.center),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: selectedPrinter == null || !isConnected
                                ? null
                                : () {
                                    if (selectedPrinter != null)
                                      printerManager.disconnect(
                                          type: selectedPrinter!.typePrinter);
                                    setState(() {
                                      isConnected = false;
                                    });
                                  },
                            child: Text(
                              "Disconnect",
                              style: GoogleFonts.montserrat(color: maincolor1),
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ],
                  ),
                ),
                DropdownButtonFormField<PrinterType>(
                  // padding: EdgeInsets.symmetric(horizontal: 20),
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(Icons.arrow_drop_down_rounded),
                  ),
                  value: defaultPrinterType,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.print,
                      size: 24,
                    ),
                    labelText: "Type Printer Device",
                    labelStyle: TextStyle(fontSize: 18.0),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  items: <DropdownMenuItem<PrinterType>>[
                    if (Platform.isAndroid || Platform.isIOS)
                      const DropdownMenuItem(
                        value: PrinterType.bluetooth,
                        child: Text("Bluetooth"),
                      ),
                    if (Platform.isAndroid || Platform.isWindows)
                      const DropdownMenuItem(
                        value: PrinterType.usb,
                        child: Text("USB"),
                      ),
                    const DropdownMenuItem(
                      value: PrinterType.network,
                      child: Text("Wifi"),
                    ),
                  ],
                  onChanged: (PrinterType? value) {
                    setState(() {
                      if (value != null) {
                        setState(() {
                          defaultPrinterType = value;
                          selectedPrinter = null;
                          isBle = false;
                          isConnected = false;
                          _scan();
                        });
                      }
                    });
                  },
                ),
                Visibility(
                  visible: defaultPrinterType == PrinterType.bluetooth &&
                      Platform.isAndroid,
                  child: SwitchListTile.adaptive(
                    activeColor: maincolor1,
                    contentPadding: const EdgeInsets.only(
                        bottom: 20.0, left: 20, right: 20),
                    title: const Text(
                      "This device supports ble (low energy)",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 19.0),
                    ),
                    value: isBle,
                    onChanged: (bool? value) {
                      setState(() {
                        isBle = value ?? false;
                        isConnected = false;
                        selectedPrinter = null;
                        _scan();
                      });
                    },
                  ),
                ),
                Visibility(
                  visible: defaultPrinterType == PrinterType.bluetooth &&
                      Platform.isAndroid,
                  child: SwitchListTile.adaptive(
                    activeColor: maincolor1,
                    contentPadding: const EdgeInsets.only(
                        bottom: 20.0, left: 20, right: 20),
                    title: const Text(
                      "Reconnect",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 19.0),
                    ),
                    value: reconnect,
                    onChanged: (bool? value) {
                      setState(() {
                        reconnect = value ?? false;
                      });
                    },
                  ),
                ),
                Column(
                    children: devices
                        .map(
                          (device) => ListTile(
                            title: Text('${device.deviceName}'),
                            subtitle: Platform.isAndroid &&
                                    defaultPrinterType == PrinterType.usb
                                ? null
                                : Visibility(
                                    visible: !Platform.isWindows,
                                    child: Text("${device.address}")),
                            onTap: () {
                              // do something
                              selectDevice(device);
                            },
                            leading: selectedPrinter != null &&
                                    ((device.typePrinter == PrinterType.usb &&
                                                Platform.isWindows
                                            ? device.deviceName ==
                                                selectedPrinter!.deviceName
                                            : device.vendorId != null &&
                                                selectedPrinter!.vendorId ==
                                                    device.vendorId) ||
                                        (device.address != null &&
                                            selectedPrinter!.address ==
                                                device.address))
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  )
                                : null,
                            trailing: OutlinedButton(
                              onPressed: selectedPrinter == null ||
                                      device.deviceName !=
                                          selectedPrinter?.deviceName
                                  ? null
                                  : () async {
                                      printTest();
                                    },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 20),
                                child: Text("Print test",
                                    style: GoogleFonts.montserrat(
                                        color: maincolor1),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ),
                        )
                        .toList()),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BluetoothPrinter {
  int? id;
  String? deviceName;
  String? address;
  String? port;
  String? vendorId;
  String? productId;
  bool? isBle;

  PrinterType typePrinter;
  bool? state;

  BluetoothPrinter(
      {this.deviceName,
      this.address,
      this.port,
      this.state,
      this.vendorId,
      this.productId,
      this.typePrinter = PrinterType.bluetooth,
      this.isBle = false});
}
