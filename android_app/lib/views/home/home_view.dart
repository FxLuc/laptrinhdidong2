import 'package:flutter/material.dart';

import '../../widgets/header_drawer.dart';
import 'card_product_home.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, String? secretRecoveyPhrase}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'FINDEX',
          style: TextStyle(color: Colors.black),
        ),
      ),

      //body
      body: Container(
        child: const ListViewPage(),
      ),

      // menu
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: const [
                HeaderDrawer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
