import 'package:flutter/material.dart';
import 'package:pmi_calculator/input_page.dart';
import 'package:pmi_calculator/result_parameters.dart';
import 'package:pmi_calculator/results.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        Results.routeName: (context) => Results(),
      },
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0XFF0A0E21),
          appBarTheme: AppBarTheme(backgroundColor: Color(0XFF0A0E21), centerTitle: true)),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
    );
  }
}
