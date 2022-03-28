import 'package:flutter/material.dart';

import 'homePage/card_product_home.dart';
import 'navBar/header_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primaryColor: Colors.lightBlue
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('FINDEX', style: TextStyle(
          color: Colors.black
        ),
        ),
      ),
      //body
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(child: CardProductHome()),
            ],
          ),
          ),
        ],
      ),

      // menu
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                HeaderDrawer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


