import 'package:flutter/material.dart';
import 'package:new_demo/screens/home_page.dart';

import 'my_app.dart';

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
        primarySwatch: Colors.blue,
      ),
      // the title is the argument passed in the widget
      home: const MyHomePage(title: 'Flutter Demo home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  // access by widget and created at the constructor of the widget

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    print("Hello Flutter");
    // setState(() {
    //   _counter++;
    // });
  }

  void menuOpening() {
    print("menu opening");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: menuOpening,
          icon: Icon(
            Icons.menu,
          ),
        ),
        title: Text("AppBAr"),
        actions: [
          IconButton(
            onPressed: menuOpening,
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Text("hwllo"),
      floatingActionButton: FloatingActionButton(
        //universally for any button,must have an aciton (onPressed)
        onPressed: _incrementCounter,
        child: Text("Hello"),
      ),
    );
  }
}
// -------------------------------------------------
// FOR EVERY SCAFFOLD HAS THIS PARAMETERS
//     return Scaffold(
    //   appBar: ,
    //   body: ,
    //   floatingActionButton:  ,
    // );


    // for any widget other than scafoold, there must be a 'child'
    // in case of column and rows, it must have children[]