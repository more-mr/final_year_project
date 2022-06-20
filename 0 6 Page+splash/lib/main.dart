import 'package:flutter/material.dart';
import './login.dart';
import './register.dart';
import './dashboard.dart';
import './editpro.dart';
import './iteml.dart';
import './noticl.dart';

void main() => runApp(AppStart());

class AppStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Login(),
        "/Register": (context) => Register(),
        "/Dashboard": (context) => Dashboard(),
        "/Dashboard/EditProfile": (context) => EditProfile(),
        "/Dashboard/ItemList": (context) => ItemList(),
        "/Dashboard/NoticList": (context) => NoticList(),
      }, //routes

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
          labelLarge: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: Colors.yellow),
        ),
      ), //theme
    ); //MaterialApp
  }
}
