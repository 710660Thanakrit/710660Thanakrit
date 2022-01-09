import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GUESS THE NUMBER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // เทียบได้กับแท็ก <div> ของ HTML
          decoration: BoxDecoration(
              color: Colors.deepOrange.shade200,
              border: Border.all(width: 5.0, color: Colors.deepOrange),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  offset: const Offset(2.0, 5.0),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ]),
          //alignment: Alignment.center,
          child: Center(
            child: Column(
              //mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets11/images/guess_logo.png', width: 100.0),
                    Column(
                      children: [
                        Text(
                          'GUESS',
                          style: TextStyle(
                              fontSize: 30.0, color: Colors.pink.shade500),
                        ),
                        Text(
                          'THE NUMBER',
                          style: TextStyle(
                              fontSize: 16.0, color: Colors.pink.shade300),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                TextField(),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text('RANDOM'),
                  onPressed: () {
                    // โค้ดที่จะทำงานเมื่อกดปุ่ม
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}