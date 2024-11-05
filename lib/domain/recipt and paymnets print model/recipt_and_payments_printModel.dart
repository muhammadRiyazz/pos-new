import 'package:p_o_s/domain/customers/customers_list.dart';

class PrintReciptOrPay {
  Customerslist customer;
  String totalOutstanding;
  String paid;
  String balance;
  String id;

  PrintReciptOrPay({
    required this.id,
    required this.customer,
    required this.totalOutstanding,
    required this.paid,
    required this.balance,
  });
}
