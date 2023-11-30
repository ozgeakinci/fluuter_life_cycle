import 'package:flutter/material.dart';
import 'package:flutter_life_cycle_project/result_screen.dart';

class PlayScreen extends StatefulWidget {
  PlayScreen(
      {required this.age,
      required this.name,
      required this.tall,
      required this.single,
      Key? key})
      : super(key: key);

  String name;
  int age;
  double tall;
  bool single;

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oyun Ekranı'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
              "${widget.name} - ${widget.age} - ${widget.tall} - ${widget.single} "),
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
