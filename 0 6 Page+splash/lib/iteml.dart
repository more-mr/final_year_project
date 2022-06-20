import 'package:flutter/material.dart';

//=============================item list=================================

class ItemList extends StatefulWidget {
  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Item list")), //Scaffold

      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(5, (index) {
          return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ), //RoundedRectangleBorder
              child: Column(children: []));
        }),
      ),
    );
  }
}
