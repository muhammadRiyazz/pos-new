import 'package:p_o_s/domain/printing%20models/printing_models.dart';

List mrp = ['200', '250', '100', '500', '600', '300', '340', '230'];
List taxIncAmt = ['200', '250', '100', '500', '600', '300', '340', '230'];
List itemName = [
  'Coco-cola',
  'Frech Fries',
  'Coffee',
  'Sugar',
  'Salt',
  'Rice',
  'Tea',
  'Pepsi'
];
List<BillItems> itemss = [
  BillItems(
      gstPercentage: '18',
      cessPercentage: '12',
      gstCessAmt: 100,
      hsnCode: 'HSN 19872',
      itemName: 'Item 1',
      mrp: 99999,
      salerate: 32353,
      qty: '1000',
      itemTotal: 5000.1),
  BillItems(
      gstPercentage: '18',
      cessPercentage: '12',
      gstCessAmt: 100,
      hsnCode: 'HSN 19872',
      itemName: 'Item 2',
      mrp: 99999,
      salerate: 32353,
      qty: '10000',
      itemTotal: 5000.1),
  BillItems(
      gstPercentage: '18',
      cessPercentage: '12',
      gstCessAmt: 100,
      hsnCode: 'HSN 19872',
      itemName: 'Item 3',
      mrp: 99999,
      salerate: 32353,
      qty: '1000',
      itemTotal: 5000.1)
];
