import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteSettings extends StatelessWidget {
  final void Function()? onEditTap;
  final void Function()? onDeleteTap;
  const NoteSettings({super.key, this.onEditTap, this.onDeleteTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //edit option
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            onEditTap!();
          },
          child: Container(
            height: 50,
            color: Theme.of(context).colorScheme.surface,
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                'Edit',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
        ),

        //delete option
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            onDeleteTap!();
          },
          child: Container(
            height: 50,
            color: Theme.of(context).colorScheme.surface,
            padding: const EdgeInsets.all(10),
            child: Center(
                child: Text(
              'Delete',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            )),
          ),
        ),
      ],
    );
  }
}

/* 

Row(
          children: [
            IconButton(
              onPressed: onEditPressed,
              icon: Icon(Icons.edit),
            ),
            IconButton(
              onPressed: onDeletePressed,
              icon: Icon(Icons.delete),
            ),
          ],
        ),
        
*/
