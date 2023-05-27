import 'package:flutter/foundation.dart';
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
      title: 'AppBar practice',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App bar Icons'),
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              print("menu is clicked");
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                print("shopping cart!");
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search is clicked");
              },
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('hello'),
                Text('hello'),
                Text('hello'),
                Text('hello'),
              ],
            ),
          ),
        ));
  }
}
