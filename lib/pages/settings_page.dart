import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Settings'),
      ),
      body: Row(
        children: [
          //Dark mode Switch
          Text('Dark Mode'),
          //Switch toggle
          CupertinoSwitch(
            value: true,
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
