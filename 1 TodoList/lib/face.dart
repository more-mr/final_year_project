import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './list.dart';

//=================================face===================================

class Face extends StatefulWidget {
  @override
  State<Face> createState() => _FaceState();
}

class _FaceState extends State<Face> {
  TextEditingController taskController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  Future _addToDb() {
    final task = taskController.text;
    final desc = descController.text;
    final time = timeController.text;

    final ref = FirebaseFirestore.instance.collection("listTable").doc();

    return ref
        .set({"task": task, "desc": desc, "time": time, "ID": ref.id})
        .then((value) {
            
            taskController.text = "";
            descController.text = "";
            timeController.text = "";
            
            print("collection added");
          })
        .catchError((e) => print(e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("what are you gonna do today?", textAlign: TextAlign.center),
      ), //AppBar

      body: Row(children: [
        Container(
            width: 400,
            height: 350,
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ), //RoundedRectangleBorder

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(height: 7.5),

                      const Text(
                        "//TODO list",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ), //Text

                      const SizedBox(height: 7),

                      Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Column(
                            children: [
                              TextFormField(
                                  controller: taskController,
                                  //onSaved: (String? value) {}
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText:
                                          'Whats the task?') //InputDecoration
                                  ), //textFormField

                              const SizedBox(height: 15),

                              TextFormField(
                                  controller: descController,
                                  //onSaved: (String? value) {}
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText:
                                          'Short description') //InputDecoration
                                  ), //textFormField

                              const SizedBox(height: 15),

                              TextFormField(
                                  controller: timeController,
                                  //onSaved: (String? value) {}
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText:
                                          'Time it sould be done') //InputDecoration
                                  ), //textFormField
                            ],
                          ) //column
                          ), //padding

                      const SizedBox(height: 15),

                      ElevatedButton(
                        onPressed: () {
                          _addToDb();
                        },
                        child: const Text('+'),
                      ) //ElevatedButton
                    ] //children
                    ) //colummn
                ) //card
            ), //container
        Container(
          width: 250,
          height: MediaQuery.of(context).size.height,
          child: Card(
            child: Center(
              child: ItemList(),
            ),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ), //RoundedRectangleBorder]),
          ),
        ),
      ]), //colum
    ); //Scaffold
  }
}

