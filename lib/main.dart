import 'package:flutter/material.dart';

import 'models/note_database.dart';
import 'pages/notes_page.dart';
import 'package:provider/provider.dart';

void main() async {
  // initialize the isar database
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDataBase.initialize();

  runApp(ChangeNotifierProvider(
    create: (context) => NoteDataBase(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesPage(),
    );
  }
}
