import 'package:flutter/material.dart';

class rewardView extends StatelessWidget {
  const rewardView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 120, maxHeight: 400),
        child:Column(
        children: [
          Expanded(
            flex: 1,
            child:Container(
                alignment: const Alignment(0.0, 0.0),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                  Text("Congrats! Pick your reward!",textAlign: TextAlign.end,),
                  Text("Yours Points: 300",textAlign: TextAlign.end,),
                ],)
              ),
            ),
          Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("Testing!"),
              Text("data"),
              Text("Third Column")
              ],
            )
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
              Text("Testing!"),
              Text("data"),
              Text("Third Column")
              ]
            ,)
          )
        ]
        ),
      ),
    );
  }
}