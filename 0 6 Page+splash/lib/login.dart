import 'package:flutter/material.dart';

//===================================login===================================
class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login", textAlign: TextAlign.center),
        ), //AppBar

        body: Center(
            child: Container(
                width: 400,
                height: 320,
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
                            "Hey\n Please login",
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
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText:
                                              'Password') //InputDecoration
                                      ), //textFormField
                                ],
                              ) //column
                              ), //padding

                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/Register'); //Navigator
                            }, //onPressed

                            child: Text("Don't have an account?",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge), //Text
                          ), //TextButton

                          SizedBox(
                              width: 100,
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/Dashboard'); //Navigator
                                },
                                child: const Text('Login'),
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
