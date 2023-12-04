import 'package:flutter/material.dart';

class PageThird extends StatefulWidget {
  const PageThird({Key? key}) : super(key: key);

  @override
  _PageThirdState createState() => _PageThirdState();
}

class _PageThirdState extends State<PageThird> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Sayfa Üç',
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
