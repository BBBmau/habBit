import 'package:flutter/material.dart';

String getFullName(String firstname, String lastname){
  return 'Hello';
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to Habbit!",
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child:Text("Hello Mauricio!")
            ),
          ),
          body: const Center(
            child: Text("How are you?"),
          ),
      //home: studentView()
      )
    );
  }
}
