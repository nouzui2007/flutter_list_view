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
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/simple': (context) => const ListViewSimple(data: [Text("item0"), Text("item1"), Text("item2")]),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ホーム"),
      ),
      body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                child: const Text("１ページへ"),
                onPressed: () {
                  Navigator.pushNamed(context, '/first');
                },
              ),
              TextButton(
                child: const Text("２ページへ"),
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
              ),
            ],
          )
      ),
    );
  }
}


/*
シンプルなリストビュー
 */
class ListViewSimple extends StatelessWidget {
  const ListViewSimple({Key? key, required this.data}) : super(key: key);

  final List<Widget> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            children: data
        ),
    );
  }
}
