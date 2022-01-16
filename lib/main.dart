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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final _controllerL = TextEditingController();
  final _controllerG = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'PIG WEIGHT\n Calculator',
                    style: TextStyle(
                      fontSize: 30.0, color: Colors.pink.shade500,),
                    textAlign: TextAlign.center,

                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/pig.png', width: 300.0),
                ],
              ),
              Expanded( child: Container()),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _controllerL,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.7),
                        border: OutlineInputBorder(),
                        labelText: 'LENGTH\n(cm)',
                        hintText: 'Enter Length',
                      ),
                    ),

                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: _controllerG,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.7),
                        border: OutlineInputBorder(),
                        labelText: 'GIRTH\n(cm)',
                        hintText: 'Enter girth',
                      ),
                    ),

                  ),

                ],
              ),
              Expanded(
                child: Center(
                  child: ElevatedButton(
                      child: Text('Calculate'),
                      onPressed: () {
                        var length = _controllerL.text;
                        var lengthD = double.tryParse(length);
                        var lengthR = lengthD! / 100.0;
                        var girth = _controllerG.text;
                        var girthD = double.tryParse(girth);
                        var girthR = girthD! / 100.0;
                        if(lengthD != null && girthD != null) {
                          var weight = lengthR * girthR * girthR * 69.3;
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    title: Text('Result!'),
                                    content: Text('Weight: ${(weight-weight*0.3).round()} - ${(weight+weight*0.3).round()}\n'
                                        'Price: ${((weight-weight*0.3)*112.50).round()} - ${((weight+weight*0.3)*112.50).round()}'),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          }, child: Text('OK'))
                                    ]
                                );
                              });
                        }
                        else if(lengthD == null || girthD == null){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Error!'),
                                  content: Text('Invalid Input!!!'),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        }, child: Text('OK'))
                                  ],
                                );
                              });
                        }
                      }
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
