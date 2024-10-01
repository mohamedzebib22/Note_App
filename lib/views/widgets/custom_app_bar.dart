import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';
import 'package:note_app/views/widgets/note_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.titleNote, required this.searchIcon});

  final IconData searchIcon;
  final String titleNote;
  @override
  Widget build(BuildContext context) {
    return  Row (
      children:  [
        Text(titleNote , 
        style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomSearchIcon(search: searchIcon),
        
      ],
    );
  }
}