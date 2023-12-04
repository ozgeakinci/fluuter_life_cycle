import 'package:flutter/material.dart';

class PageSecond extends StatefulWidget {
  const PageSecond({Key? key}) : super(key: key);

  @override
  _PageSecondState createState() => _PageSecondState();
}

class _PageSecondState extends State<PageSecond> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Sayfa İki',
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
