import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),

        //alignment: Alignment.center,
        child: Center(
          child: Column(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Text(
                'PIG WEIGHT',
                style: TextStyle(
                    fontSize: 40.0, color: Colors.pink.shade500),
              ),
              Text(
                'CALCULATOR',
                style: TextStyle(
                    fontSize: 40.0, color: Colors.pink.shade500),
              ),

              Image.asset('images/pig.png', width: 280.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Column(
                    children: [

                    ],
                  ),
                ],
              ),

              TextField(),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('CALCULATE'),
                onPressed: () {},
              ),
            ],
          ),

        ),

      ),
    );
  }
}
