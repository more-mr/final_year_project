import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './face.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "YOUR API KEY",
          authDomain: "YOUR DOMAIN AUTH",
          projectId: "YOUR PROJECT ID",
          storageBucket: "YOUR STORAGE BUCKET",
          messagingSenderId: "YOUR MESSAGING SENDER",
          appId: "YOUR APP ID"));

  runApp(AppStart());
}

class AppStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Face(),
      }, // routes

      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFFFFB3AF),
          onPrimary: Color(0xFF68000D),
          secondary: Color(0xFFE5C44A),
          onSecondary: Color(0xFF3B2F00),
          error: Color(0xFFFFB4AB),
          onError: Color(0xFF690005),
          background: Color(0xFF291800),
          onBackground: Color(0xFFFFDDB1),
          surface: Color(0xFF291800),
          onSurface: Color(0xFFFFDDB1),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ), // textTheme
      ), //theme
    ); //MaterialApp
  }
}
