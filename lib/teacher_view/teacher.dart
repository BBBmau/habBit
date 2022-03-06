import 'dart:html';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Teacher View",
    home: Teacher(),
  ));
}

class ModeSelection extends StatefulWidget {
  const ModeSelection({Key? key}) : super(key: key);

  @override
  State<ModeSelection> createState() => _ModeSelectionState();
}

class _ModeSelectionState extends State<ModeSelection> {
  String dropdownValue = 'Hype';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Color.fromRGBO(0, 78, 223, 1)),
      underline: Container(
        height: 2,
        color: Color.fromRGBO(0, 78, 223, 1),
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Hype', 'Reward', 'Study', 'Trivia']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class StudentContainer extends StatelessWidget {
  final String firstName;
  final String lastName;
  final int points;

  const StudentContainer(this.firstName, this.lastName, this.points);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xffeeee00),
        height: 120,
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(10.0)),
            Stack(children: <Widget>[
              Text(
                "$firstName $lastName XP: $points",
                style: TextStyle(
                  fontSize: 14,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1
                    ..color = Colors.blue[700]!,
                ),
              ),
              Text(
                "$firstName $lastName XP: $points",
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 56, 255, 7),
                ),
              ),
            ]),
            Padding(padding: const EdgeInsets.all(10.0)),
            ElevatedButton(
              onPressed: () {},
              child: Text("Bonus!"),
            ),
            Padding(padding: const EdgeInsets.all(5.0)),
            ElevatedButton(
              onPressed: () {},
              child: Text("..."),
            ),
            Padding(padding: const EdgeInsets.all(5.0))
          ],
        ));
  }
}

class Teacher extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<Teacher> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  String micPoints = "";
  String camPoints = "";
  String messagePoints = "";
  int classSize = 30;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Teacher's View",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        body: Container(
            //margin: const EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
          Padding(padding: const EdgeInsets.all(20.0)),
          Expanded(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: 120, maxWidth: 400),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    for (int i = 0; i < classSize; i++)
                      StudentContainer("First Name", "Last Name", 300),
                  ],
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(20.0)),
          Text(
            "Participation Points: ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Padding(padding: const EdgeInsets.all(20.0)),
          Expanded(
            child: Row(children: <Widget>[
              Padding(padding: const EdgeInsets.all(20.0)),
              Expanded(
                  child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(fontSize: 14.0),
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(Icons.mic),
                              ),
                            ),
                          ],
                        ),
                      )),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (String micInput) {
                      setState(() {
                        micPoints = micInput;
                      });
                    },
                  ),
                ],
              )),
              Padding(padding: const EdgeInsets.all(20.0)),
              Expanded(
                  child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(fontSize: 14.0),
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(Icons.video_call),
                              ),
                            ),
                          ],
                        ),
                      )),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (String camInput) {
                      setState(() {
                        camPoints = camInput;
                      });
                    },
                  ),
                ],
              )),
              Padding(padding: const EdgeInsets.all(20.0)),
              Expanded(
                  child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(fontSize: 14.0),
                          children: [
                            WidgetSpan(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Icon(Icons.message),
                              ),
                            ),
                          ],
                        ),
                      )),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (String messageInput) {
                      setState(() {
                        messagePoints = messageInput;
                      });
                    },
                  )
                ],
              )),
              Padding(padding: const EdgeInsets.all(20.0)),
            ]),
          ),
          Text(
            "Particpant's View",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const ModeSelection(),
          Padding(padding: const EdgeInsets.all(40.0))
        ])));
  }
}
