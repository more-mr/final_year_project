import 'package:flutter/material.dart';

//================================Dashboard==================================

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard", textAlign: TextAlign.center),
      ), //AppBar

      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),

          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ), //RoundedRectangleBorder

            child: SizedBox(
              height: 300,
              width: 400,
              child: Column(
                children: [
                  const Icon(Icons.account_circle_rounded, size: 150),

                  const SizedBox(height: 20),

                  ListTile(
                    title: Text("User Name\n Email@text.com",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge), //Text
                  ), //ListTile
                ], //Children
              ), //column
            ), //SizedBox
          ), //Card

          const SizedBox(height: 20), //SizedBox

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/Dashboard/ItemList'); //Navigator
                      },
                      child: const Text("Items list"),
                    ) //ElevatedButton
                    ), //SizedBox

                SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/Dashboard/NoticList'); //Navigator
                      },
                      child: const Text("Notification"),
                    ) //ElevatedButton
                    ), //SizedBox
              ] //children
              ), //Row
        ], //children
      ), //Column

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/Dashboard/EditProfile'); //Navigator
        },
        label: const Text('Edit Profile'),
        icon: const Icon(Icons.account_circle_rounded),
      ), // FloatingActionButton
    ); //Scaffold
  }
}
