import 'package:flutter/material.dart';

class UserInteractionPage extends StatefulWidget {
  const UserInteractionPage({Key? key}) : super(key: key);

  @override
  _UserInteractionPageState createState() => _UserInteractionPageState();
}

class _UserInteractionPageState extends State<UserInteractionPage> {
  var tfControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanıcı etkileşimi'),
      ),
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Silmek istiyor musunuz?'),
                    action: SnackBarAction(
                        label: 'Evet',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Silindi')));
                        }),
                  ),
                );
              },
              child: const Text('Snackbar')),
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      'Silmek istiyor musunuz?',
                      style: TextStyle(color: Colors.indigo),
                    ),
                    backgroundColor: Colors.white,
                    action: SnackBarAction(
                        label: 'Evet',
                        textColor: Colors.red,
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text(
                              'Silindi',
                              style: TextStyle(color: Colors.red),
                            ),
                            backgroundColor: Colors.white,
                          ));
                        }),
                  ),
                );
              },
              child: const Text('Snacbar(özel)')),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Başlık'),
                        content: const Text('içerik'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('iptal'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Tamam'),
                          )
                        ],
                      );
                    });
              },
              child: const Text('Alert')),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Kayıt işlemi'),
                        content: TextField(
                          controller: tfControl,
                          decoration: InputDecoration(hintText: ('veri')),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'iptal',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              print('Alınan veri : ${tfControl.text}');
                              Navigator.pop(context);
                              tfControl.text = '';
                            },
                            child: const Text('Kaydet',
                                style: TextStyle(color: Colors.black)),
                          )
                        ],
                      );
                    });
              },
              child: const Text('Alert (özel)')),
        ]),
      ),
    );
  }
}
