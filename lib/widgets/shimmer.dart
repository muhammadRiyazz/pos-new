import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:shimmer/shimmer.dart';

class ListShimmer extends StatelessWidget {
  const ListShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Shimmer.fromColors(
        baseColor: maincolor1,
        highlightColor: maincolor2,
        child: ListTile(
          title: Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(17, 0, 0, 0)),
              width: MediaQuery.of(context).size.width * .4,
              height: 10,
            ),
          ]),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color.fromARGB(17, 0, 0, 0),
            ),
          ),
          subtitle: Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(17, 0, 0, 0)),
              width: MediaQuery.of(context).size.width * .6,
              height: 5,
            ),
          ]),
        ),
      ),
    );
  }
}

class BillpreviewShimmer extends StatelessWidget {
  const BillpreviewShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(17, 0, 0, 0)),
              width: MediaQuery.of(context).size.width * .4,
              height: 10,
            ),
          ]),
          trailing: Container(
            width: 40,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color.fromARGB(17, 0, 0, 0),
            ),
          ),
        ),
        ListTile(
          title: Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(17, 0, 0, 0)),
              width: MediaQuery.of(context).size.width * .4,
              height: 10,
            ),
          ]),
          leading: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color.fromARGB(17, 0, 0, 0),
            ),
          ),
          trailing: Container(
            width: 40,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color.fromARGB(17, 0, 0, 0),
            ),
          ),
          subtitle: Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(17, 0, 0, 0)),
              width: MediaQuery.of(context).size.width * .6,
              height: 5,
            ),
          ]),
        ),

          ListTile(
          title: Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(17, 0, 0, 0)),
              width: MediaQuery.of(context).size.width * .6,
              height: 10,
            ),
          ]),
          trailing: Container(
            width: 30,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color.fromARGB(17, 0, 0, 0),
            ),
          ),
        ),  ListTile(
          title: Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(17, 0, 0, 0)),
              width: MediaQuery.of(context).size.width * .3,
              height: 10,
            ),
          ]),
          trailing: Container(
            width: 40,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color.fromARGB(17, 0, 0, 0),
            ),
          ),
        ),  ListTile(
          title: Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(17, 0, 0, 0)),
              width: MediaQuery.of(context).size.width * .2,
              height: 10,
            ),
          ]),
          trailing: Container(
            width: 35,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color.fromARGB(17, 0, 0, 0),
            ),
          ),
        ),
       ListTile(
          title: Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(17, 0, 0, 0)),
              width: MediaQuery.of(context).size.width * .3,
              height: 10,
            ),
          ]),
          trailing: Container(
            width: 35,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color.fromARGB(17, 0, 0, 0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Container(
              width: double.infinity,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color.fromARGB(17, 0, 0, 0),
              ),
            ),
        ),
        ListTile(
          title: Wrap(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(17, 0, 0, 0)),
              width: MediaQuery.of(context).size.width * .4,
              height: 10,
            ),
          ]),
          trailing: Container(
            width: 70,
            height: 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color.fromARGB(17, 0, 0, 0),
            ),
          ),
        ),
       
      ],
    );
  }
}
