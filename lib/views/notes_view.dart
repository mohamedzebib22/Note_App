import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/notes_veiw_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){} , child:Icon(Icons.add ), backgroundColor: Colors.cyan,),
      body:const NotesViewBody(),
    );
  }
}