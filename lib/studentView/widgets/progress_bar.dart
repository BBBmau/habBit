import 'package:flutter/material.dart';

class progressBar extends StatelessWidget {
  const progressBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: progressWidget()
    );
  }
}

class progressWidget extends StatefulWidget {
  const progressWidget({ Key? key }) : super(key: key);

  @override
  State<progressWidget> createState() => _progressWidgetState();
}

class _progressWidgetState extends State<progressWidget> 
    with TickerProviderStateMixin {
      late AnimationController controller;

   @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const Text('Linear Progress!',
          style: TextStyle(fontSize: 20),
          ),
          LinearProgressIndicator(
            value: controller.value,
            semanticsLabel: 'Linear Progress Indicator',
            ),
          ],
        ),
      )
    );
  }
}