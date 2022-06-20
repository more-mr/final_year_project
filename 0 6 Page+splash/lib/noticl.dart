import 'package:flutter/material.dart';

//=============================Notic list=================================

class NoticList extends StatefulWidget {
  @override
  State<NoticList> createState() => _NoticListState();
}

class _NoticListState extends State<NoticList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notic list")), //Scaffold

      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                height: 50,
                child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ), //RoundedRectangleBorder
                    child: Column(children: [])));
          }),
    );
  }
}
