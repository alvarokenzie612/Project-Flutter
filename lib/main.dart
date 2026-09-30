import 'package:flutter/material.dart';

import 'package:get/get.dart';

//import 'kalkulator_page_new.dart';

import 'package:testflutter/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Belajar Flutter PPLG 3',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: Routes.registration,
      getPages: Routes.myPages,
    );
  }
}
