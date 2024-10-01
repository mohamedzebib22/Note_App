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
        
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
          children: [
            SizedBox(height:30 ,),
            CustomAppBar(titleNote: 'EditNote' ,  searchIcon: Icons.check,),
            SizedBox(height: 16,),
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