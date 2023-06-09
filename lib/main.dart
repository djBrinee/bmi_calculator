import 'package:flutter/material.dart';
import 'package:pmi_calculator/input_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Color(0XFF0A0E21),
            appBarTheme: AppBarTheme(backgroundColor: Color(0XFF0A0E21), centerTitle: true)),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: InputPage());
  }
}
