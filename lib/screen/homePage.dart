import 'package:flutter/material.dart';
import 'package:test/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  static String id = 'Homepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.white,
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
        centerTitle: true,
        title: Text('Home Page'),
      ),
    );
  }
}
