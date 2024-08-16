import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          //Header
          DrawerHeader(
            child: Icon(Icons.note),
          ),

          // notes tile

          // Settings tile
        ],
      ),
    );
  }
}
