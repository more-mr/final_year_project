import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


//=============================item list=================================

class ItemList extends StatefulWidget {
  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  final Stream<QuerySnapshot> _mySessions =
      FirebaseFirestore.instance.collection("listTable").snapshots();

  @override
  Widget build(BuildContext context) {
    
  TextEditingController taskCon = TextEditingController();
  TextEditingController descCon = TextEditingController();
  TextEditingController timeCon = TextEditingController();
    
   void delete(id) {
    FirebaseFirestore.instance
        .collection("listTable")
        .doc(id)
        .delete()
        .then((value) => print("Deleted"));
  }
  
  void update(allData){
    
    var collection = FirebaseFirestore.instance.collection("listTable");
    
    taskCon.text = allData["task"];
    descCon.text = allData["desc"];
    timeCon.text = allData["time"];
      
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Update?"),
        content:Center(
          child: Column(
            children:[
              
              TextFormField(
                controller: taskCon,
                //onSaved: (String? value) {}
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:
                        'what should be done') //InputDecoration
               ), //textFormField
              
               const SizedBox(height: 15),
              
              TextFormField(
                controller: descCon,
                //onSaved: (String? value) {}
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:
                        'Short description') //InputDecoration
               ), //textFormField
              
               const SizedBox(height: 15),
              
              TextFormField(
                controller: timeCon,
                //onSaved: (String? value) {}
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText:
                        'Time it should be done') //InputDecoration
               ), //textFormField
              
              ElevatedButton(
                onPressed: () {
                
                  collection.doc(allData["ID"])
                    .update({"task": taskCon, "desc": descCon, "time":timeCon});
                   
                  print(collection.doc(allData["ID"]));
                  
                  Navigator.pop(context);
                },
                
                child: const Text('update'),
              ) //ElevatedButton
              
            ])),
      ),
    );
  }
    
    
    return StreamBuilder(
        stream: _mySessions,
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
          if (snapshot.hasError) {
            return const Text("Somthing went wrong");
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          if (snapshot.hasData) {
            return ListView(
              children: snapshot.data!.docs
                  .map((DocumentSnapshot document) {
                    Map<String, dynamic> data =
                        document.data()! as Map<String, dynamic>;
                    return Column(
                      children: [
                        ListTile(
                          title: Text(data['task']),
                          subtitle: Text(data['desc'] + "\n" + data['time']),
                        ),
                        
                        const SizedBox(height: 10),
                        
                        Row(
                          children: [
                            const SizedBox(width: 20),
                            
                            ElevatedButton(
                              onPressed: () {
                                update(data);
                              },
                              child: const Text('</>'),
                            ), //ElevatedButton

                            const SizedBox(width: 20),

                            ElevatedButton(
                              onPressed: () {
                                delete(data["ID"]);
                              },
                              child: const Text('x'),
                            ) //ElevatedButton
                          ],
                        ),
                      ],
                    );
                  })
                  .toList()
                  .cast(),
            );
          } else {
            return const Text("Your out of luck");
          }
        });
  }
}

