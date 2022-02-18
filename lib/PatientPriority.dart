import 'package:flutter/material.dart';

class Priotiy extends StatefulWidget {
  const Priotiy({Key? key}) : super(key: key);

  @override
  _PriotiyState createState() => _PriotiyState();
}

class _PriotiyState extends State<Priotiy> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
        title: const Text('Patient Priority List'),
          backgroundColor: Color.fromRGBO(237, 11, 25, 1),
          elevation: 0,

    ),
         body: Column(children: [
           Container(
             color: Color.fromRGBO(237, 11, 25, 1),
               padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
               child: TextField(
                 controller: searchController,
                 decoration: const InputDecoration(
                   enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                   ),
                 ),
               )),
           ]
         ),
        )
    );
  }
}
