import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_o_s/application/accounts/bloc/accounts_bloc.dart';
import 'package:p_o_s/application/customerpart/customerpart_bloc.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/presentaion/screen%20outstanding/screen_outstanding.dart';
import 'package:p_o_s/widgets/shimmer.dart';

class ScreenAccounts extends StatelessWidget {
  const ScreenAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CustomerpartBloc>(context).add(const CFetchlist());
    return Scaffold(
      appBar: AppBar(
        title: Text('Select party'),
      ),
      body: BlocBuilder<CustomerpartBloc, CustomerpartState>(
        builder: (context, state) {
          return RefreshIndicator(onRefresh: ()async {
                BlocProvider.of<CustomerpartBloc>(context).add(const CFetchlist());

          },
            child: Column(
              children: [
                Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: TextFormField(
                    // controller: searchcontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5),
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search customer/number',
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
                          .add(SearchCustomer(query: value));
                    },
                  ),
                ),
                state.isLoading
                    ? Expanded(child: ListShimmer())



                    : state.customerlist.isEmpty?
                    Expanded(
                      child: ListView(children: const [
                                h20,
                                h20,
                                h20,
                                h20,
                                Center(child: Text('No data')),
                              ]),
                    ):
                    
                    state.isError != 0
                        ? Expanded(
                          child: ListView(children: const [
                                    h20,
                                    h20,
                                    h20,
                                    h20,
                                    Center(child: Text('Error')),
                                  ]),
                        )
                        : Expanded(
                            child: ListView.separated(
                              separatorBuilder: (context, index) => Divider(
                                height: 0,
                                indent: 10,
                                endIndent: 10,
                              ),
                              itemCount: state.customerlist.length,
                              itemBuilder: (context, index) => ListTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ScreenOutstanding(
                                          customer: state.customerlist[index],
                                        ),
                                      ));
                                },
                                title:
                                    Text(state.customerlist[index].bussinessname),
                                subtitle: Row(children: [
                                  Icon(
                                    Icons.call,
                                    size: 12,
                                  ),
                                  w5,
                                  Text(state.customerlist[index].contactsmsno
                                      .toString())
                                ]),
                                trailing:
                                    Icon(Icons.keyboard_arrow_right_rounded),
                              ),
                            ),
                          ),
              ],
            ),
          );
        },
      ),
    );
  }
}
