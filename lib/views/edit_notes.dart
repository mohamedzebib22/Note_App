import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({super.key});

  static String id = 'EditNotes';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Scaffold(
        appBar: AppBar(title: Text('Edit'),),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
          children: [
            CustomAppBar(titleNote: 'EditNote' ,  searchIcon: Icons.check,),
            CustomTextFeild(hint: 'title'),
            SizedBox(height: 20,),
            CustomTextFeild(hint: 'content' , maxLines: 5,),
          ],
                ),
        ),
      ),
    );
  }
}