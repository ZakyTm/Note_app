import 'package:flutter/material.dart';
import 'package:note_app/models/note_database.dart';
import 'package:provider/provider.dart';

import '../models/note.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  //text controller to access what the user typed
  final textController = TextEditingController();

  //create a note
  void createNote() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
        ),
        actions: [
          // create a button
          MaterialButton(
            onPressed: () {
              // call the addNote method from the provider
              // to save the note to the database
              context.read<NoteDataBase>().addNote(textController.text);
              // and then close the dialog
              Navigator.of(context).pop();
            },
            child: const Text("Create"),
          ),
        ],
      ),
    );
  }

  // read Notes
  void readNotes() {
    context.read<NoteDataBase>().fetchNotes();
  }
  // Update a note

  //delete a note
  @override
  Widget build(BuildContext context) {
    // note database
    final noteDatabase = context.watch<NoteDataBase>();

    //current notes
    List<Note> currentNotes = noteDatabase.currentNotes;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNote,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: currentNotes.length,
        itemBuilder: (context, index) {
          //get individual note
          final note = currentNotes[index];
          // list tile UI
          return ListTile(
            title: Text(note.text),
          );
        },
      ),
    );
  }
}
