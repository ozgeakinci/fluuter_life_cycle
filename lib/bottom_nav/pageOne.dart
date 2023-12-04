import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Sayfa Bir',
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
