import 'package:flutter/material.dart';
import 'package:flutter_life_cycle_project/%20user_interaction/%20user_interaction_page.dart';
import 'package:flutter_life_cycle_project/bottom_nav/bottom_nav_page.dart';
import 'package:flutter_life_cycle_project/main_page.dart';
import 'package:flutter_life_cycle_project/page_navigations/one_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnePage(),
    );
  }
}
