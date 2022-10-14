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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Learning Inkwell Widget",
      )),
      body: Center(
        child: Container(
          height: 350.0,
          child: Center(
            child: InkWell(
              onTap: () {
                print(" this is pressed");
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
                child: Center(
                  child: Text("Click me "),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
