import 'package:flutter/material.dart';
import 'package:flutter_life_cycle_project/people.dart';
import 'package:flutter_life_cycle_project/play_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Sayaç $counter'),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text('Tıkla')),
          ElevatedButton(
              onPressed: () {
                var people =
                    People(name: 'Ozge', age: 33, tall: 1.62, single: false);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PlayScreen(people: people)));
              },
              child: const Text('Başla'))
        ]),
      ),
    );
  }
}
