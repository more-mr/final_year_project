import 'package:flutter/material.dart';


//================================edit profile===============================

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile", textAlign: TextAlign.center),
      ), //AppBar

      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(height: 20),

            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ), //RoundedRectangleBorder
              child: SizedBox(
                height: 400,
                width: 600,
                child: Column(
                  children: [
                    const Icon(Icons.account_circle_rounded, size: 150),

                    Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        child: Column(
                          children: [
                            TextFormField(
                                //onSaved: (String? value) {}
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText:
                                        'Enter new Username') //InputDecoration
                                ), //textFormField

                            const SizedBox(height: 15),

                            TextFormField(
                                //onSaved: (String? value) {}
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText:
                                        'Enter new Email') //InputDecoration
                                ), //textFormField
                          ],
                        ) //column
                        ), //padding
                    const SizedBox(height: 20),

                    SizedBox(
                        width: 100,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("submit"),
                        ) //ElevatedButton
                        ), //SizedBox
                  ], //Children
                ), //column
              ), //SizedBox
            ), //Card
          ], //children
        ), //Column
      ), //container
    ); //Scaffold
  }
}

