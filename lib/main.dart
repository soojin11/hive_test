import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_test/hive_data.dart';
import 'package:hive_test/home.dart';
import 'package:hive/hive.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(HivePickupDataAdapter());
  await Hive.openBox<HivePickupData>('testBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: Hive.box<HivePickupData>('testBox').listenable(),
            builder: ((context, value, child) => Home())),
      ),
    );
  }
}
