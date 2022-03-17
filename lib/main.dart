import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff172a4a),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // Add box decoration
          decoration: BoxDecoration(
            // Box decoration takes a gradient
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.red,
                Colors.black26,
                Colors.blueGrey,
                Colors.white38,
              ],
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, left: 40, right: 50),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      labelText: 'Email',
                      hintText: 'johndoe@gmail.com',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15)),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 50, left: 40, right: 50),
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        labelText: 'Password',
                        hintText: '.......',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20)),
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text('Forget password?',
                      style: TextStyle(color: Colors.grey))),
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    fixedSize: const Size(200, 50),
                    onPrimary: Colors.white,
                    primary: Colors.blueGrey,
                    onSurface: Colors.black,
                    splashFactory: InkSplash.splashFactory,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Log In',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: (25)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}