import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteTile extends StatelessWidget {
  final String text;

  const NoteTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(top: 10, left: 20, right: 25, bottom: 10),
      child: ListTile(
        title: Text(text),
      ),
    );
  }
}
