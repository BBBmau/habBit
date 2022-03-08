import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:firebase_core/firebase_core.dart';
import 'package:habbit/main.dart';

class rewardView extends StatelessWidget {
  rewardView({Key? key}) : super(key: key);

  DatabaseReference databaseReference = FirebaseDatabase(
          app: Firebase.apps[0],
          databaseURL: Firebase.apps[0].options.databaseURL)
      .reference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Expanded(
          flex: 1,
          child: Container(
              alignment: const Alignment(0.0, 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Congrats! Pick your reward!",
                    textAlign: TextAlign.end,
                  ),
                  Text(
                    "Yours Points: 300",
                    textAlign: TextAlign.end,
                  ),
                ],
              )),
        ),
        Expanded(
          flex: 2,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(25),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                onPressed: () {},
                                child: const Image(
                                    image: AssetImage(
                                        "lib/studentView/images/vBucks.gif")))),
                        Text("data")
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(25),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                onPressed: () async {
                                  // print(ref.databaseURL);
                                  // print(ref.app?.options.databaseURL);
                                },
                                child: const Image(
                                    image: AssetImage(
                                        "lib/studentView/images/robux.png")))),
                        Text("data")
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(25),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                onPressed: () async => {
                                      await databaseReference.set({
                                        "mauricio": 200,
                                      })
                                    },
                                child: const Image(
                                    image: AssetImage(
                                        "lib/studentView/images/emerald_mc.gif")))),
                        Text("data")
                      ],
                    ))
                  ],
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(25),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                onPressed: () {},
                                child: const Image(
                                    image: AssetImage(
                                        "lib/studentView/images/rare_candy.png")))),
                        Text("data")
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(25),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                onPressed: () {},
                                child: const Image(
                                    image: AssetImage(
                                        "lib/studentView/images/kahoot.gif")))),
                        Text("data")
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(25),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                                onPressed: () {},
                                child: const Image(
                                    image: AssetImage(
                                        "lib/studentView/images/music.gif")))),
                        Text("data")
                      ],
                    ))
                  ],
                ))
              ]),
        )
      ]),
    );
  }
}
