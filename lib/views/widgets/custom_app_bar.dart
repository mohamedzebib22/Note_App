import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';
import 'package:note_app/views/widgets/note_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row (
      children:  [
        Text('Notes' , style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomSearchIcon(),
        
      ],
    );
  }
}