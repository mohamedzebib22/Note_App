import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constans.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_notes.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:note_app/views/widgets/notes_veiw_body.dart';

void main() async{
  await Hive.initFlutter();
  
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        EditNotes.id : (context) => EditNotes(),
        NotesView.id : (context) =>NotesView(),
      },
      initialRoute: NotesView.id,
      
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      home:const NotesView(),
    );
  }
}
