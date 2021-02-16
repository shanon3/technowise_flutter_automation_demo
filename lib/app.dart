import 'package:flutter/material.dart';
import 'package:persona/config.dart';

// ignore: must_be_immutable
class PersonaApp extends StatelessWidget {
  static Future<Config> config;
  String env;
  Widget startScreen;

  PersonaApp(
    this.env,
    this.startScreen,
  );

  @override
  Widget build(BuildContext context) {
    config = getConfig(env);
    return MaterialApp(
      title: 'Persona App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: startScreen,
    );
  }
}
