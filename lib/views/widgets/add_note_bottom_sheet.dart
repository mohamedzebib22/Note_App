import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:   EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey =GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32,),
      
          CustomTextFeild(
            onSaved: (value){
              title = value;
            },
            hint: 'title',),
      
          SizedBox(height: 20,),
      
          CustomTextFeild(
            onSaved: (value){
              subTitle = value;
            },
            hint: 'content' , maxLines: 5,),
      
          SizedBox(height: 40,),
      
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
      
          SizedBox(height: 16,)
        ],
      ),
    );
  }
}