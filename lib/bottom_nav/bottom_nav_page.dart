import 'package:flutter/material.dart';
import 'package:flutter_life_cycle_project/bottom_nav/pageOne.dart';
import 'package:flutter_life_cycle_project/bottom_nav/pageSecond.dart';
import 'package:flutter_life_cycle_project/bottom_nav/pageThird.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int chooseIndex = 1;
  var pages = [const PageOne(), const PageSecond(), const PageThird()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Navigation',
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: pages[chooseIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_one_outlined), label: "1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_two_outlined), label: "2"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: "1"),
        ],
        currentIndex: chooseIndex,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            chooseIndex = index;
          });
        },
      ),
    );
  }
}
