import 'package:flutter/material.dart';
import 'package:habbit/studentView/student_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web,
  );

  DatabaseReference database = FirebaseDatabase.instance.ref();

  print("Firebase Apps: ${Firebase.apps.length}");

  print(Firebase.apps[0].options.databaseURL.toString());

  await database.set({
    "name": "Mauricio",
    "age": 23,
    "address": {
      "city": "Cathedral City",
      "state": "CA",
      "street": "San Eljay Ave",
      "number": 31150,
    }
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Welcome to Habbit!", home: const studentView());
  }
}
