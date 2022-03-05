import 'package:flutter/material.dart';
import 'package:habbit/studentView/hype_view.dart';
import 'package:habbit/studentView/reward_view.dart';
import 'package:habbit/studentView/study_view.dart';
import 'package:habbit/studentView/widgets/progress_bar.dart';

class studentView extends StatelessWidget {
  const studentView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child:Text("Hello Mauricio!"),
          )
        ),
      body: Container(
          child:Column( 
            children:const [Expanded(child: rewardView()),
              Expanded(
                child: progressBar()),
                ]
            ,)
        ),
    );
  }
}