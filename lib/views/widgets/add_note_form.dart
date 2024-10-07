import 'dart:developer';

import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:note_app/cubits/add_note_cubit/add_note.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextFeild(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextFeild(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          SizedBox(
            height: 40,
          ),
          BlocBuilder<AddNoteCubit, AddNoteCubitState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteCubitLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var noteModel = NoteModel(
                        title: title!,
                        subtitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
