import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextFeild(hint: 'title',),
          SizedBox(height: 20,),
          CustomTextFeild(hint: 'content' , maxLines: 5,),
        ],
      ),
    );
  }
}