import 'package:flutter/material.dart';
import 'package:ventspace/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text("W A L L"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        drawer: MyDrawer(),
      
    );
  }
}