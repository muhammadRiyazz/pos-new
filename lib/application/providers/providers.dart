import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_o_s/application/accounts/bloc/accounts_bloc.dart';
import 'package:p_o_s/application/accounts/payment%20bloc/payment_bloc.dart';
import 'package:p_o_s/application/appentyno/appentyno_bloc.dart';
import 'package:p_o_s/application/bill%20submit/bloc/submitbill_bloc.dart';
import 'package:p_o_s/application/bills/bloc/bill_bloc.dart';
import 'package:p_o_s/application/checkout/checkout_bloc.dart';
import 'package:p_o_s/application/company%20profile/bloc/profile_bloc.dart';
import 'package:p_o_s/application/paymenTtype/payment_methord_bloc.dart';
import 'package:p_o_s/application/salesitems/sales_item_bloc.dart';
import 'package:p_o_s/application/customerpart/customerpart_bloc.dart';
import 'package:p_o_s/application/login%20bloc/login_bloc.dart';
import 'package:p_o_s/application/report/bloc/report_bloc.dart';
import 'package:p_o_s/application/server%20connect/server_conn_bloc.dart';

blocProviders() {
  return [
    BlocProvider(
      create: (context) => ServerConnBloc(),
    ),
    BlocProvider(
      create: (context) => LoginBloc(),
    ),
    BlocProvider(
      create: (context) => SalesItemBloc(),
    ),
    BlocProvider(
      create: (context) => CustomerpartBloc(),
    ),
    BlocProvider(
      create: (context) => SubmitbillBloc(),
    ),
    BlocProvider(
      create: (context) => BillBloc(),
    ),
    BlocProvider(
      create: (context) => ReportBloc(),
    ),
    BlocProvider(
      create: (context) => AccountsBloc(),
    ),
    BlocProvider(
      create: (context) => PaymentBloc(),
    ),
    BlocProvider(
      create: (context) => PaymentMethordBloc(),
    ),
    BlocProvider(
      create: (context) => ProfileBloc(),
    ),
     BlocProvider(
      create: (context) => CheckoutBloc(),
    ),
        BlocProvider(
      create: (context) => AppentynoBloc(),
    ),
  ];
}
