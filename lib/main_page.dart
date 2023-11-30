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
  bool control = false;

  Future<int> sum(int num1, int num2) async {
    int result = num1 + num2;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
                            builder: (context) => PlayScreen(people: people)))
                    .then((value) {
                  //Anasayfaya geçiş yapıldığını anladığımız yer burada thenden sonra istenilen kodlar yazılabilir.
                  print('Anasayfaya geçiş yapıldı');
                });
              },
              child: const Text('Başla')),
          Visibility(visible: control, child: const Text('Merhaba')),
          Text(
            control ? 'Merhaba' : 'Güle Güle',
            style: TextStyle(color: control ? Colors.blue : Colors.red),
          ),
          // ((){}()) bu parantezlerin arasına dart kodu yazabiliyoruz.
          (() {
            if (control) {
              return const Text(
                'Hello',
                style: TextStyle(color: Colors.blue),
              );
            } else {
              return const Text('BYE BYE',
                  style: TextStyle(color: Colors.orange));
            }
          }()),
          const Text('Merhaba'),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  control = true;
                });
              },
              child: const Text('Durum 1 (True)')),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  control = false;
                });
              },
              child: const Text('Durum 2 (False)')),

          FutureBuilder<int>(
            future: sum(10, 20),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text('Hata oluştu');
              }
              if (snapshot.hasData) {
                return Text('Sonuç ${snapshot.data}');
              } else {
                return const Text('Sonuç yok');
              }
            },
          )
        ]),
      ),
    );
  }
}
