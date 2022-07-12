import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';

class Splashscreen extends StatefulWidget { // splash screen code
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _Splashscreen createState() => _Splashscreen();
}
class _Splashscreen extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage() //call second screen
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}