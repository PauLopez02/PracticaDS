import 'package:milestone3/Data/request.dart' as Requests;
import 'package:milestone3/Pages/parent_area_page.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String title = Requests.getParentArea();
    List<String> subAreas = Requests.getSubAreas(title);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // removes the debug banner that hides the home button
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey), // deepPurple
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 20), // size of hello
        ),
      ),
      home: ParentAreaPage(title: title, subAreas: subAreas), // MyHomePage(),
    );
  }
}
