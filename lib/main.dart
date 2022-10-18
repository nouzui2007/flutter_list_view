import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListViewSimple(),
    );
  }
}

class ListViewSimple extends StatelessWidget {
  const ListViewSimple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const data = [
      Text("item0"),Text("item1"),Text("item2"),Text("item3"),Text("item4"),
    ];
    return MaterialApp(
      home: Scaffold(
        body: ListView(
            children: data
        ),
      ),
    );
  }
}
