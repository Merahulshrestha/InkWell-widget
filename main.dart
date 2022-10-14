import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final onClickedColour = Colors.amberAccent;

    final offClickedColour = Colors.green;

  void updateColour (int onTap) {
    if (onTap == 1) {
      if (onClickedColour == Colors.amberAccent) {
        onClickedColour ==  Colors.green;
      } else {
        onClickedColour ==  Colors.amberAccent;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Learning Inkwell Widget", 
                 )),
    body: Center(
      child: Container(
        height:350.0,
      child: Center(
      child: InkWell(
        onTap: () {
         setState((){

          updateColour(1);
         });
        },
        child:Container(
        height: 100,
        width: 100,
        color: Colors.amber,
          child: Center(child: Text("Click me ")),
        ),
      ),
      ),),
    ),);
  }
}
