import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_o_s/application/customerpart/customerpart_bloc.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/domain/customers/customers_list.dart';
import 'package:p_o_s/presentaion/screen%20add%20customer/screen_add_customer.dart';
import 'package:p_o_s/presentaion/screen%20customer%20details/screen_cutomer_details.dart';
import 'package:p_o_s/presentaion/screen%20edit%20customer/screen_edit_customer.dart';
import 'package:p_o_s/widgets/shimmer.dart';
import 'package:p_o_s/widgets/snackbar.dart';
import 'package:page_transition/page_transition.dart';

class ScreenCustomersList extends StatelessWidget {
  const ScreenCustomersList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerpartBloc, CustomerpartState>(
        listener: (context, state) {
      if (state.isError == 2) {
        showCustomSnackbar(
            context: context, msg: 'Sorry! Database Connection Lost');
      }
    }, builder: (context, state) {
      return RefreshIndicator(
        onRefresh: () async {
          BlocProvider.of<CustomerpartBloc>(context).add(const CFetchlist());
        },
        child: Scaffold(
          backgroundColor: white,
          appBar: AppBar(
            title: const Text('Customers'),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                          duration: const Duration(milliseconds: 250),
                          type: PageTransitionType.rightToLeft,
                          child: ScreenAddCustomer(
                            type: 0,
                            id: state.customerlist.isEmpty
                                ? 'CUS0'
                                : state
                                    .customerlist[state.customerlist.length - 1]
                                    .cusid!,
                          ),
                        ));
                  },
                  icon: const Icon(Icons.person_add_alt_1_outlined))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
            child: Column(
              children: [
                TextFormField(
                  // controller: searchcontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search Customer/phone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: maincolor1),
                    ),
                  ),
                  onChanged: (value) {
                    BlocProvider.of<CustomerpartBloc>(context)
                        .add(CustomerpartEvent.searchCustomer(query: value));
                  },
                ),
                Expanded(
                  child: state.isLoading
                      ? const Expanded(child: ListShimmer())
                      : state.customerlist.isEmpty
                          ? ListView(children: const [
                              h20,
                              h20,
                              h20,
                              h20,
                              Center(child: Text('No data')),
                            ])
                          : state.isError != 0
                              ? ListView(children: const [
                                  h20,
                                  h20,
                                  h20,
                                  h20,
                                  Center(child: Text('Error')),
                                ])
                              : ListView.builder(
                                  itemCount: state.customerlist.length,
                                  itemBuilder: (context, index) => ListTile(
                                    onTap: () {
                                      
                        BlocProvider.of<CustomerpartBloc>(context)
                            .add(CustomerpartEvent.remarklist(cusId:  state
                                                        .customerlist[index].cusid!));
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ScreenCustomerDetails(
                                                    customerDetail: state
                                                        .customerlist[index]),
                                          ));
                                    },
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    leading: CircleAvatar(
                                      child: Text(
                                          state.customerlist[index].gstno == ''
                                              ? 'B2C'
                                              : 'B2B',style: TextStyle(fontSize: 12),),
                                    ),
                                    title: Text(state
                                        .customerlist[index].bussinessname,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                                    subtitle: Row(children: [
                                      const Icon(
                                        Icons.call,
                                        size: 12,
                                      ),
                                      w5,
                                      Text(state
                                          .customerlist[index].contactsmsno!),
                                         
                                    ]),
                                    trailing: IconButton(
                                        onPressed: () {
                                          log(state
                                                      .customerlist[index]
                                                      .district!);
                                          Navigator.push(
                                              context,
                                              PageTransition(
                                                duration: const Duration(
                                                    milliseconds: 250),
                                                type: PageTransitionType
                                                    .rightToLeft,
                                                child: ScreenEditCustomer(
                                                  gst: state.customerlist[index]
                                                      .gstno!,
                                                  address: state
                                                      .customerlist[index]
                                                      .bussinessaddr,
                                                  email: state
                                                      .customerlist[index]
                                                      .email!,
                                                  name: state
                                                      .customerlist[index]
                                                      .bussinessname,
                                                  phone: state
                                                      .customerlist[index]
                                                      .contactsmsno!,
                                                  state: state
                                                      .customerlist[index]
                                                      .state!,
                                                  district: state
                                                      .customerlist[index]
                                                      .district!,
                                                  id: state.customerlist[index]
                                                      .cusid!,
                                                ),
                                              ));
                                        },
                                        icon: const Icon(
                                            Icons.mode_edit_outlined)),
                                  ),
                                ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
