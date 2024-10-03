import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constans.dart';
import 'package:note_app/cubits/add_note_cubit/add_note.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observe.dart';
import 'package:note_app/views/edit_notes.dart';
import 'package:note_app/views/notes_view.dart';


void main() async{

  Bloc.observer = SimpleBlocObserve();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  
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
