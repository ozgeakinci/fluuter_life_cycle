import 'package:flutter/material.dart';
import 'package:flutter_life_cycle_project/people.dart';
import 'package:flutter_life_cycle_project/result_screen.dart';

class PlayScreen extends StatefulWidget {
  PlayScreen({required this.people, Key? key}) : super(key: key);

  People people;

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left)),
        title: const Text('Oyun Ekranı'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
              "${widget.people.name} - ${widget.people.age} - ${widget.people.tall} - ${widget.people.single} "),
          ElevatedButton(
              onPressed: () {
                //push direkt o sayfaya yönlendirirken pushreplacement aradaki sayfayı kaldırır. Sayfayı göstermeyip direkt olarak anasayfaya dönmek istersek bu şekilde ilerleyebiliriz.
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResultScreen()));
              },
              child: const Text('Bitti')),
        ]),
      ),
    );
  }
}
