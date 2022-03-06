import 'package:flutter/material.dart';
import 'package:habbit/studentView/reward_view.dart';
import 'package:habbit/studentView/student_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:developer' as developer;

String getFullName(String firstname, String lastname) {
  return 'Hello';
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
  developer.log(FirebaseDatabase.instance.databaseURL!);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Welcome to Habbit!", home: const rewardView());
  }
}
