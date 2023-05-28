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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('jinhyeok'),
                accountEmail: Text('jinhyeok@bang.com'),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/choonsik.png'),
                  backgroundColor: Colors.white,
                ),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/fullchoonsik.png'),
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/fullchoonsik.png'),
                    backgroundColor: Colors.white,
                  )
                ],
                onDetailsPressed: () {
                  print('arrow is clicked!');
                },
                decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: Text('Home'),
                onTap: (){
                  print('Home is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: Text('Settings'),
                onTap: (){
                  print('Settings is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: Text('Q & A'),
                onTap: (){
                  print('Q&A is clicked');
                },
                trailing: Icon(Icons.add),
              )
            ],
          ),
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
