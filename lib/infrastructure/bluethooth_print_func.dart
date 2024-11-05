import 'dart:developer';
import 'dart:io';

import 'package:flutter_esc_pos_utils/flutter_esc_pos_utils.dart';
import 'package:flutter_pos_printer_platform_image_3/flutter_pos_printer_platform_image_3.dart';
import 'package:p_o_s/commons/profile_varibles.dart';
import 'package:p_o_s/domain/printing%20models/printing_models.dart';
import 'package:p_o_s/domain/recipt%20and%20paymnets%20print%20model/recipt_and_payments_printModel.dart';
import 'package:p_o_s/infrastructure/dateformate.dart';

Future printBill(PrintBill printBillModel) async {
  List<int> bytes = [];
  log('printBillModel   --- >>>>------------------------------------------------------------' +
      printBillModel.invNo);

  // Xprinter XP-N160I
  final profile = await CapabilityProfile.load(name: 'XP-N160I');

  // PaperSize.mm80 or PaperSize.mm58
  final generator = Generator(PaperSize.mm58, profile);
  bytes += generator.setGlobalCodeTable('CP1252');
  bytes += generator.text('${cmpname.toString()}',
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ));
  bytes += generator.clearStyle();
  bytes += generator.text('$cmpAdd',
      styles: const PosStyles(
        bold: false,
        align: PosAlign.center,
      ));

  bytes += generator.clearStyle();
  bytes += generator.text('Contact: $cmpcontact',
      styles: const PosStyles(
        bold: false,
        align: PosAlign.center,
      ));
  bytes += generator.clearStyle();
  bytes += generator.text(
      '${printBillModel.from == 1 ? 'Sales Retune' : printBillModel.from == 2 ? 'Estimate' : 'Sale Bill'}',
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
      ));
  bytes += generator.hr(len: 32);

  bytes += generator.text('Gst no: $cmpgst',
      styles: const PosStyles(
        bold: false,
        align: PosAlign.center,
      ));

  // bytes += generator.hr(len: 32);
  bytes += generator.hr(len: 32);
  // // bytes += generator.text('àÀèÈéÉûÛüÜçÇôÔàÀèÈéÉûÛüÜçÇôÔàÀèÈ',
  // //     styles: const PosStyles(codeTable: 'CP1252'));
  // // bytes += generator.text('Special 2: blåbærgrød',
  // //     styles: const PosStyles(codeTable: 'CP1252'));

  // // bytes += generator.text('Bold text', styles: const PosStyles(bold: true));
  // // bytes +=
  // //     generator.text('Reverse text', styles: const PosStyles(reverse: true));
  // // bytes += generator.text('Underlined text',
  // //     styles: const PosStyles(underline: true), linesAfter: 1);
  // // bytes += generator.text('Align left',
  // //     styles: const PosStyles(align: PosAlign.left));
  // // bytes += generator.text('Align center',
  // //     styles: const PosStyles(align: PosAlign.center));
  // // bytes += generator.text('Align right',
  // //     styles: const PosStyles(align: PosAlign.right), linesAfter: 1);
  // // bytes += generator.qrcode('Barcode by escpos',
  // //     size: QRSize.size4, cor: QRCorrection.H);
  // // bytes += generator.feed(2);

  bytes += generator.row([
    PosColumn(
        text: 'Bill:${printBillModel.invNo}',
        width: 6,
        styles: const PosStyles(
          align: PosAlign.left,
        )),
    PosColumn(
      text: 'Date:${formatDate(DateTime.now().toString().substring(0, 10))}',
      width: 6,
      styles: const PosStyles(align: PosAlign.right),
    ),
  ]);
  bytes += generator.hr(len: 32);
  bytes += generator.row([
    PosColumn(
        text: 'Bill to:',
        width: 4,
        styles: const PosStyles(
          align: PosAlign.left,
        )),
    PosColumn(
      text: printBillModel.customer.bussinessname,
      width: 8,
      styles: const PosStyles(align: PosAlign.left),
    ),
  ]);
  bytes += generator.clearStyle();
  bytes += generator.row([
    PosColumn(
        text: '',
        width: 4,
        styles: const PosStyles(
          align: PosAlign.left,
        )),
    PosColumn(
      text: 'GST NO:${printBillModel.customer.gstno.toString()}',
      width: 8,
      styles: const PosStyles(align: PosAlign.left),
    ),
  ]);
  bytes += generator.text(printBillModel.customer.bussinessaddr,
      styles: const PosStyles(align: PosAlign.center));

  bytes += generator.hr(len: 32);
  bytes += generator.row([
    PosColumn(text: '#', width: 1),
    PosColumn(text: 'Item Name', width: 11),
  ]);
  bytes += generator.row([
    PosColumn(text: ' ', width: 1),
    PosColumn(text: 'MRP', width: 3),
    PosColumn(text: 'Sale Rs', width: 3),
    PosColumn(
        text: 'Qty', width: 2, styles: const PosStyles(align: PosAlign.center)),
    PosColumn(
        text: 'Amt', width: 3, styles: const PosStyles(align: PosAlign.right)),
  ]);
  bytes += generator.hr(len: 32);
  int index = 1;
  for (BillItems i in printBillModel.billItems) {
    bytes += generator.row([
      PosColumn(text: index.toString() + '.', width: 2),
      PosColumn(text: i.itemName.toString(), width: 10),
    ]);

    bytes += generator.row([
      PosColumn(text: '', width: 1),
      PosColumn(text: i.mrp.toString(), width: 3),
      PosColumn(text: i.salerate.toString(), width: 3),
      PosColumn(
          text: i.qty.toString(),
          width: 2,
          styles: const PosStyles(align: PosAlign.center)),
      PosColumn(
          text: i.itemTotal.toString(),
          width: 3,
          styles: const PosStyles(align: PosAlign.right)),
    ]);
    bytes += generator.clearStyle();
  bytes += generator.row([
      PosColumn(
          text: i.hsnCode,
          width: 4,
          styles: const PosStyles(align: PosAlign.center)),
      PosColumn(
          text: 'GST ' +
              double.parse(i.gstPercentage.toString()).toStringAsFixed(0) +
              "%",
          width: 4,
          styles: const PosStyles(align: PosAlign.right)),
      PosColumn(
          text: 'CESS ' +
              double.parse(i.cessPercentage.toString()).toStringAsFixed(0) +
              "%",
          width: 4,
          styles: const PosStyles(align: PosAlign.center)),
    ]);


    index++;
  }

  bytes += generator.hr(len: 32);
  // // bytes += generator.row([
  // //   PosColumn(text: '', width: 1),
  // //   PosColumn(
  // //       text: 'HSN 16765'.toString(),
  // //       width: 3,
  // //       styles: PosStyles(align: PosAlign.center)),
  // //   PosColumn(
  // //       text: 'GST 18%'.toString(),
  // //       width: 4,
  // //       styles: PosStyles(align: PosAlign.center)),
  // //   PosColumn(
  // //       text: 'CESS 12%'.toString(),
  // //       width: 3,
  // //       styles: PosStyles(align: PosAlign.center)),
  // //   PosColumn(text: '', width: 1),
  // // ]);

  bytes += generator.row([
    PosColumn(
        text: 'Total',
        width: 7,
        styles: const PosStyles(align: PosAlign.right)),
    PosColumn(
        text: printBillModel.totalQty,
        width: 2,
        styles: const PosStyles(align: PosAlign.center)),
    PosColumn(
        text: printBillModel.allItemTotal,
        width: 3,
        styles: const PosStyles(align: PosAlign.right)),
  ]);

  bytes += generator.feed(1);

  printBillModel.from == 0 || printBillModel.isFromBillView
      ? bytes += generator.row([
          PosColumn(
              text: 'Bill Discount',
              width: 7,
              styles: const PosStyles(align: PosAlign.right)),
          PosColumn(text: ' ', width: 2),
          PosColumn(
              text: printBillModel.discount.toString(),
              width: 3,
              styles: const PosStyles(align: PosAlign.right)),
        ])
      : null;
  bytes += generator.row([
    PosColumn(
        text: 'GST+CESS',
        width: 7,
        styles: const PosStyles(align: PosAlign.right)),
    PosColumn(
        text: ' ', width: 2, styles: const PosStyles(align: PosAlign.center)),
    PosColumn(
        text: printBillModel.gstCesstotal,
        width: 3,
        styles: const PosStyles(align: PosAlign.right)),
  ]);
  bytes += generator.hr(len: 32);
  bytes += generator.row([
    PosColumn(
        text: 'Bill Total',
        width: 7,
        styles: const PosStyles(align: PosAlign.right, bold: true)),
    PosColumn(
        text: ' ', width: 2, styles: const PosStyles(align: PosAlign.center)),
    PosColumn(
        text: printBillModel.billTotal,
        width: 3,
        styles: const PosStyles(align: PosAlign.right, bold: true)),
  ]);
  printBillModel.from == 1 || printBillModel.from == 2
      ? null
      : printBillModel.isFromBillView
          ? bytes += generator.row([
              PosColumn(
                  text: 'Status',
                  width: 7,
                  styles: const PosStyles(align: PosAlign.right, bold: true)),
              PosColumn(
                  text: ' ',
                  width: 2,
                  styles: const PosStyles(align: PosAlign.center, bold: true)),
              PosColumn(
                  text: printBillModel.status,
                  width: 3,
                  styles: const PosStyles(
                    align: PosAlign.right,
                  )),
            ])
          : bytes += generator.row([
              PosColumn(
                  text:
                      'Outstanding(${printBillModel.isOutstandingDebit ? "Dr" : "Cr"})',
                  width: 7,
                  styles: const PosStyles(align: PosAlign.right, bold: true)),
              PosColumn(
                  text: ' ',
                  width: 2,
                  styles: const PosStyles(align: PosAlign.center, bold: true)),
              PosColumn(
                  text: printBillModel.cusOutstanding,
                  width: 3,
                  styles: const PosStyles(
                    align: PosAlign.right,
                  )),
            ]);
  printBillModel.from == 0 || printBillModel.isFromBillView
      ? bytes += generator.row([
          PosColumn(
              text: 'Recived',
              width: 7,
              styles: const PosStyles(
                align: PosAlign.right,
              )),
          PosColumn(
              text: ' ',
              width: 2,
              styles: const PosStyles(align: PosAlign.center)),
          PosColumn(
              text: printBillModel.paidAmt,
              width: 3,
              styles: const PosStyles(align: PosAlign.right)),
        ])
      : null;

  printBillModel.from == 0 
      ? bytes += generator.row([
          PosColumn(
              text:
                  'Balance ${drorcr(balace: balace(billtotal: double.parse(printBillModel.billTotal), outstanding: double.parse(printBillModel.cusOutstanding), recived: double.parse(printBillModel.paidAmt), DRCR: printBillModel.isOutstandingDebit ? "Dr" : "Cr"))}',
              width: 7,
              styles: const PosStyles(
                align: PosAlign.right,
              )),
          PosColumn(
              text: ' ',
              width: 2,
              styles: const PosStyles(align: PosAlign.center)),
          PosColumn(
              text: balace(
                      billtotal: double.parse(printBillModel.billTotal),
                      outstanding: double.parse(printBillModel.cusOutstanding),
                      recived: double.parse(printBillModel.paidAmt),
                      DRCR: printBillModel.isOutstandingDebit ? "Dr" : "Cr")
                  .abs()
                  .toStringAsFixed(2),
              width: 3,
              styles: const PosStyles(align: PosAlign.right)),
        ])
      : null;
  bytes += generator.text('àÀàÀ',
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ));

  _printEscPos(bytes, generator);
}

Future printTest() async {
  List<int> bytes = [];

  // Xprinter XP-N160I
  final profile = await CapabilityProfile.load(name: 'XP-N160I');

  // PaperSize.mm80 or PaperSize.mm58
  final generator = Generator(PaperSize.mm58, profile);
  bytes += generator.setGlobalCodeTable('CP1252');
  bytes += generator.hr();
  bytes += generator.text('Hai Agent',
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ));
  bytes += generator.text('Your printer is all set to go!',
      styles: const PosStyles(
        align: PosAlign.center,
      ));
  bytes += generator.hr();

  bytes += generator.reset();

  _printEscPos(bytes, generator);
}

printreciptAccounts(PrintReciptOrPay printReciptOrPay) async {
  List<int> bytes = [];

  // Xprinter XP-N160I
  final profile = await CapabilityProfile.load(name: 'XP-N160I');

  // PaperSize.mm80 or PaperSize.mm58
  final generator = Generator(PaperSize.mm58, profile);
  bytes += generator.setGlobalCodeTable('CP1252');
  bytes += generator.text('àÀ ${cmpname.toString()} àÀ',
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ));
  bytes += generator.clearStyle();
  bytes += generator.text('$cmpAdd',
      styles: const PosStyles(
        bold: false,
        align: PosAlign.center,
      ));

  bytes += generator.clearStyle();
  bytes += generator.text('Contact: $cmpcontact',
      styles: const PosStyles(
        bold: false,
        align: PosAlign.center,
      ));
  bytes += generator.clearStyle();
  bytes += generator.text('Gst no: $cmpgst',
      styles: const PosStyles(
        bold: false,
        align: PosAlign.center,
      ));
  bytes += generator.clearStyle();
  bytes += generator.hr(len: 32);
  bytes += generator.text('Receipts and Payments',
      styles: const PosStyles(
        bold: false,
        align: PosAlign.center,
      ));
  bytes += generator.hr(len: 32);
  // // bytes += generator.text('àÀèÈéÉûÛüÜçÇôÔàÀèÈéÉûÛüÜçÇôÔàÀèÈ',
  // //     styles: const PosStyles(codeTable: 'CP1252'));
  // // bytes += generator.text('Special 2: blåbærgrød',
  // //     styles: const PosStyles(codeTable: 'CP1252'));

  // // bytes += generator.text('Bold text', styles: const PosStyles(bold: true));
  // // bytes +=
  // //     generator.text('Reverse text', styles: const PosStyles(reverse: true));
  // // bytes += generator.text('Underlined text',
  // //     styles: const PosStyles(underline: true), linesAfter: 1);
  // // bytes += generator.text('Align left',
  // //     styles: const PosStyles(align: PosAlign.left));
  // // bytes += generator.text('Align center',
  // //     styles: const PosStyles(align: PosAlign.center));
  // // bytes += generator.text('Align right',
  // //     styles: const PosStyles(align: PosAlign.right), linesAfter: 1);
  // // bytes += generator.qrcode('Barcode by escpos',
  // //     size: QRSize.size4, cor: QRCorrection.H);
  // // bytes += generator.feed(2);

  bytes += generator.row([
    PosColumn(
        text: 'ID:${printReciptOrPay.id}',
        width: 6,
        styles: const PosStyles(
          align: PosAlign.left,
        )),
    PosColumn(
      text: 'Date:${formatDate(DateTime.now().toString().substring(0, 10))}',
      width: 6,
      styles: const PosStyles(align: PosAlign.right),
    ),
  ]);
  bytes += generator.hr(len: 32);
  bytes += generator.row([
    PosColumn(
        text: 'Party:',
        width: 4,
        styles: const PosStyles(
          align: PosAlign.left,
        )),
    PosColumn(
      text: printReciptOrPay.customer.bussinessname,
      width: 8,
      styles: const PosStyles(align: PosAlign.left),
    ),
  ]);
  bytes += generator.clearStyle();
  bytes += generator.row([
    PosColumn(
        text: '',
        width: 4,
        styles: const PosStyles(
          align: PosAlign.left,
        )),
    PosColumn(
      text: 'GST NO:${printReciptOrPay.customer.gstno.toString()}',
      width: 8,
      styles: const PosStyles(align: PosAlign.left),
    ),
  ]);
  bytes += generator.text(printReciptOrPay.customer.bussinessaddr,
      styles: const PosStyles(align: PosAlign.center));

  bytes += generator.hr(len: 32);
  bytes += generator.row([
    PosColumn(
        text: 'Party Outstanding:',
        width: 7,
        styles: const PosStyles(
          align: PosAlign.left,
        )),
    PosColumn(
        text: printReciptOrPay.totalOutstanding,
        width: 5,
        styles: const PosStyles(align: PosAlign.right)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Paid amt: ',
        width: 6,
        styles: const PosStyles(
          align: PosAlign.left,
        )),
    PosColumn(
        text: printReciptOrPay.paid,
        width: 6,
        styles: const PosStyles(align: PosAlign.right)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Balance amt: ',
        width: 6,
        styles: const PosStyles(
          align: PosAlign.left,
        )),
    PosColumn(
        text: printReciptOrPay.balance,
        width: 6,
        styles: const PosStyles(align: PosAlign.right)),
  ]);
  bytes += generator.emptyLines(1);
  bytes += generator.reset();
  _printEscPos(bytes, generator);
}

/// print ticket
void _printEscPos(List<int> bytes, Generator generator) async {
  var connectedTCP = false;
  if (selectedPrinter == null) return;
  var bluetoothPrinter = selectedPrinter!;

  switch (bluetoothPrinter.typePrinter) {
    case PrinterType.usb:
      bytes += generator.feed(2);
      bytes += generator.cut();
      await printerManager.connect(
          type: bluetoothPrinter.typePrinter,
          model: UsbPrinterInput(
              name: bluetoothPrinter.deviceName,
              productId: bluetoothPrinter.productId,
              vendorId: bluetoothPrinter.vendorId));
      pendingTask = null;
      break;
    case PrinterType.bluetooth:
      bytes += generator.cut();
      await printerManager.connect(
          type: bluetoothPrinter.typePrinter,
          model: BluetoothPrinterInput(
              name: bluetoothPrinter.deviceName,
              address: bluetoothPrinter.address!,
              isBle: bluetoothPrinter.isBle ?? false,
              autoConnect: reconnect));
      pendingTask = null;
      if (Platform.isAndroid) pendingTask = bytes;
      break;
    case PrinterType.network:
      bytes += generator.feed(2);
      bytes += generator.cut();
      connectedTCP = await printerManager.connect(
          type: bluetoothPrinter.typePrinter,
          model: TcpPrinterInput(ipAddress: bluetoothPrinter.address!));
      if (!connectedTCP) print(' --- please review your connection ---');
      break;
    default:
  }
  if (bluetoothPrinter.typePrinter == PrinterType.bluetooth &&
      Platform.isAndroid) {
    if (currentStatus == BTStatus.connected) {
      printerManager.send(type: bluetoothPrinter.typePrinter, bytes: bytes);
      pendingTask = null;
    }
  } else {
    printerManager.send(type: bluetoothPrinter.typePrinter, bytes: bytes);
  }
}

double balace(
    {required double billtotal,
    required double outstanding,
    required double recived,
    required String DRCR}) {
  double Balace = 0;
  if (DRCR == 'Dr') {
    Balace = billtotal + outstanding.abs() - recived;
  } else {
    Balace = billtotal - outstanding.abs() - recived;
  }
  log('balace            ' + Balace.toString());
  return Balace;
}

String drorcr({
  required double balace,
}) {
  String drorcr = '';
  if (balace < 0) {
    print("The value is negative.");

    drorcr = 'Cr';
  } else {
    drorcr = 'Dr';

    print("The value is not negative.");
  }

  return drorcr;
}
