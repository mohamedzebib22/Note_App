import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:note_app/cubits/notes_cubit/notescubit.dart';
import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/views/widgets/notes_veiw_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Notescubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                context: context,
                builder: (context) {
                  return AddNoteBottomSheet();
                });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.cyan,
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
