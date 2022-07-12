import 'package:flutter/material.dart';
import 'package:login_ui/splash_screen.dart';

void main() {
  runApp(const MyApp()); // app name
}

class MyApp extends StatelessWidget {  // material app
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const Splashscreen(), // splash screen page
    );
  }
}



