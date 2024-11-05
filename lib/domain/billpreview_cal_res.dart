class InvoiceData {
  final String itemCode;
  final String itemName;
    final String hsncode;

  final double qty;
  final double baseRate;
  final double saleRate;
  final double mrp;
  final double amount;
  final double grossValue;
  final double billDiscount;
  final double netAmount;
  final double gstPercent; 
    final double gstAmount; 

  final double totalAmount;
  final double cessPercent; 
  final double cessAmount;

  const InvoiceData({required this.hsncode,
    required this.itemCode,
    required this.itemName,
    required this.qty,
    required this.baseRate,
    required this.saleRate,
    required this.mrp,
    required this.amount,
    required this.grossValue,
    required this.billDiscount,
    required this.netAmount,
    required this.gstPercent,
    required this.gstAmount,
    required this.totalAmount,
    required this.cessPercent,
    required this.cessAmount,
  });

  factory InvoiceData.fromJson(Map<String, dynamic> json) => InvoiceData(hsncode:json['HSNCode'] as String ,
        itemCode: json['itemCode'] as String,
        itemName: json['itemName'] as String,
        qty: json['qty'] as double,
        baseRate: json['baseRate'] as double,
        saleRate: json['saleRate'] as double,
        mrp: json['mrp'] as double,
        amount: json['amount'] as double,
        grossValue: json['grossValue'] as double,
        billDiscount: json['billDiscount'] as double,
        netAmount: json['netAmount'] as double,
        gstPercent: json['gstPercent'] as double,
        gstAmount: json['gstAmount'] as double,
        totalAmount: json['totalAmount'] as double,
        cessPercent: json['cessPercent'] as double,
        cessAmount: json['cessAmount'] as double,
      );

  Map<String, dynamic> toJson() => {
        'itemCode': itemCode,
        'itemName': itemName,
        'qty': qty,
        'baseRate': baseRate,
        'saleRate': saleRate,
        'mrp': mrp,
        'amount': amount,
        'grossValue': grossValue,
        'billDiscount': billDiscount,
        'netAmount': netAmount,
        'gstPercent': gstPercent,
        'gstAmount': gstAmount,
        'totalAmount': totalAmount,
        'cessPercent': cessPercent,
        'cessAmount': cessAmount,
      };
}
