import 'package:flutter/material.dart';
import 'package:habbit/studentView/widgets/progress_bar.dart';

class studentView extends StatelessWidget {
  const studentView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:const Text("Hello Mauricio!"),
          )
        ),
      body: const Center(
          child: progressBar()
        )
      );
  }
}