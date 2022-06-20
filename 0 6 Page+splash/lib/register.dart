import 'package:flutter/material.dart';

//=================================register===================================

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Register", textAlign: TextAlign.center),
        ), //AppBar

        body: Center(
            child: Container(
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

                          Text(
                            "Register a new account",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.titleLarge,
                          ), //Text

                          const SizedBox(height: 7),

                          Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: Column(
                                children: [
                                  TextFormField(
                                      //onSaved: (String? value) {}
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText:
                                              'Username') //InputDecoration
                                      ), //textFormField

                                  const SizedBox(height: 15),

                                  TextFormField(
                                      //onSaved: (String? value) {}
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Email') //InputDecoration
                                      ), //textFormField

                                  const SizedBox(height: 15),

                                  TextFormField(
                                      //onSaved: (String? value) {}
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText:
                                              'Password') //InputDecoration
                                      ), //textFormField
                                ],
                              ) //column
                              ), //padding

                          const SizedBox(height: 15),

                          SizedBox(
                              width: 100,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/Dashboard'); //Navigator
                                },
                                child: const Text('Register'),
                              ) //ElevatedButton
                              ), //container
                        ] //children
                        ) //colummn
                    ) //card
                ) //center
            ) //container
        ); //Scaffold
  }
}