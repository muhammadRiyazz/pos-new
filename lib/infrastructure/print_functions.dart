import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_esc_pos_utils/flutter_esc_pos_utils.dart';
import 'package:p_o_s/commons/profile_varibles.dart';
import 'package:p_o_s/domain/printing%20models/printing_models.dart';
import 'package:p_o_s/domain/recipt%20and%20paymnets%20print%20model/recipt_and_payments_printModel.dart';
import 'package:p_o_s/infrastructure/bluethooth_print_func.dart';
import 'package:p_o_s/infrastructure/dateformate.dart';

Future<Uint8List> readFileBytes(String path) async {
  ByteData fileData = await rootBundle.load(path);
  Uint8List fileUnit8List = fileData.buffer
      .asUint8List(fileData.offsetInBytes, fileData.lengthInBytes);
  return fileUnit8List;
}

Future<List<int>> customEscPos(PrintBill printBillModel) async {
  // log('balace ===========' +
  //     balace(
  //             billtotal: double.parse(printBillModel.billTotal),
  //             outstanding: double.parse(printBillModel.cusOutstanding),
  //             recived: double.parse(printBillModel.paidAmt),
  //             DRCR: printBillModel.isOutstandingDebit ? "Dr" : "Cr")
  //         .abs()
  //         .toString());
  // log('DrorCr ===========' +
  //     drorcr(
  //         balace: balace(
  //             billtotal: double.parse(printBillModel.billTotal),
  //             outstanding: double.parse(printBillModel.cusOutstanding),
  //             recived: double.parse(printBillModel.paidAmt),
  //             DRCR: printBillModel.isOutstandingDebit ? "Dr" : "Cr")));

  // log('printBillModel   --- >>>>------------------------------------------------------------' +
  //     printBillModel.invNo);
  // log(printBillModel.billItems[0].itemName.toString());
  // log(printBillModel.billItems[0].itemTotal.toString());
  // log(printBillModel.billItems[0].mrp.toString());
  // log(printBillModel.billItems[0].qty.toString());
  // log(printBillModel.billItems[0].salerate.toString());
  // log(printBillModel.billItems[0].gstCessAmt.toString());

  final profile = await CapabilityProfile.load();
  final generator = Generator(PaperSize.mm58, profile, spaceBetweenRows: 0);
  List<int> bytes = [];

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
  bytes += generator.hr(len: 32);
  // bytes += generator.text('àÀèÈéÉûÛüÜçÇôÔàÀèÈéÉûÛüÜçÇôÔàÀèÈ',
  //     styles: const PosStyles(codeTable: 'CP1252'));
  // bytes += generator.text('Special 2: blåbærgrød',
  //     styles: const PosStyles(codeTable: 'CP1252'));

  // bytes += generator.text('Bold text', styles: const PosStyles(bold: true));
  // bytes +=
  //     generator.text('Reverse text', styles: const PosStyles(reverse: true));
  // bytes += generator.text('Underlined text',
  //     styles: const PosStyles(underline: true), linesAfter: 1);
  // bytes += generator.text('Align left',
  //     styles: const PosStyles(align: PosAlign.left));
  // bytes += generator.text('Align center',
  //     styles: const PosStyles(align: PosAlign.center));
  // bytes += generator.text('Align right',
  //     styles: const PosStyles(align: PosAlign.right), linesAfter: 1);
  // bytes += generator.qrcode('Barcode by escpos',
  //     size: QRSize.size4, cor: QRCorrection.H);
  // bytes += generator.feed(2);

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

  // bytes += generator.row([
  //   PosColumn(
  //       text: '',
  //       width: 4,
  //       styles: const PosStyles(
  //         align: PosAlign.left,
  //       )),
  //   PosColumn(
  //     text: 'Address',
  //     width: 8,
  //     styles: const PosStyles(align: PosAlign.left),
  //   ),
  // ]);
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
      PosColumn(text: i.itemName, width: 10),
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
  // bytes += generator.row([
  //   PosColumn(text: '', width: 1),
  //   PosColumn(
  //       text: 'HSN 16765'.toString(),
  //       width: 3,
  //       styles: PosStyles(align: PosAlign.center)),
  //   PosColumn(
  //       text: 'GST 18%'.toString(),
  //       width: 4,
  //       styles: PosStyles(align: PosAlign.center)),
  //   PosColumn(
  //       text: 'CESS 12%'.toString(),
  //       width: 3,
  //       styles: PosStyles(align: PosAlign.center)),
  //   PosColumn(text: '', width: 1),
  // ]);

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
  bytes += generator.reset();
  bytes += generator.cut();

  return bytes;
}

Future<List<int>> sunmiReciptAndPay(PrintReciptOrPay printReciptOrPay) async {
  log('printBillModel    >>>>');
  log(printReciptOrPay.toString());

  final profile = await CapabilityProfile.load();
  final generator = Generator(PaperSize.mm58, profile, spaceBetweenRows: 0);
  List<int> bytes = [];

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
  bytes += generator.emptyLines(3);
  bytes += generator.reset();

  return bytes;
}
