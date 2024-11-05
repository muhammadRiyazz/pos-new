// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:p_o_s/application/bills/bloc/bill_bloc.dart';
// import 'package:p_o_s/application/customerpart/customerpart_bloc.dart';
// import 'package:p_o_s/constans/constans.dart';
// import 'package:p_o_s/widgets/shimmer.dart';

// class CustomersList extends StatelessWidget {
//   CustomersList({super.key, required this.edate, required this.sdate});
//   final DateTime? sdate, edate;
//   @override
//   Widget build(BuildContext context) {

//     return BlocBuilder<CustomerpartBloc, CustomerpartState>(
//         builder: (context, state) {
//       return Scaffold(
//         backgroundColor: white,
//         appBar: AppBar(
//           // actions: [
//           //   Padding(
//           //     padding: EdgeInsets.symmetric(horizontal: 15),
//           //     child: IconButton(
//           //         onPressed: () {},
//           //         icon: Text(
//           //           'Clear',
//           //           style: TextStyle(color: Colors.white),
//           //         )),
//           //   ),
//           // ],
//           title: Text('Select Customers'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
//           child: Column(
//             children: [
//               TextFormField(
//                 // controller: searchcontroller,
//                 keyboardType: TextInputType.text,
//                 decoration: InputDecoration(
//                   contentPadding: const EdgeInsets.all(5),
//                   prefixIcon: const Icon(Icons.search),
//                   hintText: 'Search Customer',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                     borderSide: const BorderSide(color: Colors.black12),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                     borderSide: const BorderSide(color: maincolor1),
//                   ),
//                 ),
//                 onChanged: (value) {
//                   BlocProvider.of<CustomerpartBloc>(context)
//                       .add(CustomerpartEvent.searchCustomer(query: value));
//                 },
//               ),
//               Expanded(
//                 child: state.isLoading
//                     ? Expanded(child: ListShimmer())
//                     : state.isError != 0
//                         ? ListView(children: const [
//                                   h20,
//                                   h20,
//                                   h20,
//                                   h20,
//                                   Center(child: Text('Error')),
//                                 ])
//                         : ListView.builder(
//                             itemCount: state.customerlist.length,
//                             itemBuilder: (context, index) => ListTile(
//                               onTap: () {
//                                 BlocProvider.of<BillBloc>(context).add(
//                                     SortBills(
//                                         cusId: state.customerlist[index].cusid,
//                                         cusname: state
//                                             .customerlist[index].bussinessname,
//                                         eDate: edate,
//                                         sDate: sdate));
//                                 Navigator.pop(context);
//                               },
//                               contentPadding:
//                                   const EdgeInsets.symmetric(horizontal: 10),
//                               leading: CircleAvatar(
//                                 child: Text(state.customerlist[index].gstno
//                                             .toString() ==
//                                         ""
//                                     ? 'B2C'
//                                     : 'B2B'),
//                               ),
//                               title:
//                                   Text(state.customerlist[index].bussinessname),
//                               // trailing: (state.biller == null) ||
//                               //         (state.customerlist[index] !=
//                               //             state.biller!)
//                               //     ? SizedBox()
//                               //     : CircleAvatar(
//                               //         radius: 10,
//                               //         child: Icon(
//                               //           Icons.done,
//                               //           size: 10,
//                               //         )),
//                             ),
//                           ),
//               ),
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }
