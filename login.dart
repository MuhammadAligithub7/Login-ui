import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [

            Container( // background flutter logo
            color: Colors.white,
            child:FlutterLogo(size:MediaQuery.of(context).size.height),
           ),

            Center(
              child: Container(  // first i take container inside stack and center it
                height: 380.0,
                width: 380.0,
                padding: const EdgeInsets.symmetric(
                  vertical: 30.0,
                  horizontal: 25.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25.0),
                ),

                child: Column(  // second i take column inside stack
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                     Padding(
                      padding: const EdgeInsets.symmetric(
                      vertical: 25.0,
                      ),
                      child: TextField(  // third i take text_field for username
                        autocorrect: false,
                        autofocus: false,
                        style: const TextStyle(
                        fontSize: 22.0,
                        ),
                        decoration: InputDecoration(
                        prefix: const Icon(Icons.person),
                        hintText: 'Username',
                        label: const Text('Username'),
                        labelStyle:
                        const TextStyle(
                        color: Colors.black54,
                        ),


                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        fillColor: Colors.blueGrey,
                        contentPadding: const EdgeInsets.all(18.0),
                        ),
                      ),
                    ),

                     TextField(    // fourth i take text_field for password
                        autocorrect: false,
                        autofocus: false,
                        obscureText: true,
                        style: const TextStyle(
                        fontSize: 22.0,
                       ),
                        decoration: InputDecoration(
                        prefix: const Icon(Icons.lock),
                        suffix: const Icon(Icons.visibility),
                        hintText: 'Password',
                        label: const Text('Password'),
                        labelStyle:
                        const TextStyle(
                        color: Colors.black54,
                        ),

                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        fillColor: Colors.blueGrey,
                        contentPadding: const EdgeInsets.all(18.0),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
                      child: Row(    // fifth i take row for forgot password
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                      Text('Forgot password!',
                      style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),

                    MaterialButton(onPressed:() {},    // sixth i take material_button for login
                      color: Colors.red,
                      splashColor: Colors.green,
                      minWidth: 200.0,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                      padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      ),
                      child: const Text('Login',
                      style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}



