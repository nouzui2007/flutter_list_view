import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const simpleStringData = ["item0", "item1", "item2", "item3"];

    return MaterialApp(
      title: 'ListView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // '/': (context) => const Home(),
        '/': (context) => const DesignedListView(),
        '/simple': (context) => const ListViewSimple(data: simpleStringData),
        '/designed': (context) => const DesignedListView(),
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

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    var widgets = data.map((v) => Text(v)).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple ListView'),
      ),
        body: ListView(
            children: widgets
        ),
    );
  }
}

/*

 */
class DesignedListView extends StatelessWidget {
  const DesignedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Designed ListView'),
        ),
        body: ListView(
            children: [
              _menuItem("メニュー1", const Icon(Icons.settings)),
              _menuItem("メニュー2", const Icon(Icons.map)),
              _menuItem("メニュー3", const Icon(Icons.room)),
              _menuItem("メニュー4", const Icon(Icons.local_shipping)),
              _menuItem("メニュー5", const Icon(Icons.airplanemode_active)),
            ]
        ),
    );
  }

  Widget _menuItem(String title, Icon icon) {
    return GestureDetector(
      child:Container(
          padding: EdgeInsets.all(8.0),
          decoration: new BoxDecoration(
              border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child:icon,
              ),
              Text(
                title,
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 18.0
                ),
              ),
            ],
          )
      ),
      onTap: () {
        print("onTap called.");
      },
    );
  }
}
