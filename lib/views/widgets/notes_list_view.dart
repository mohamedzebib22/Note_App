import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      
      itemBuilder:(context , index){
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 4),
        child: NoteItem(),
      );
    } );
  }
}