import 'package:flutter/material.dart';
import 'package:note_app/views/edit_notes.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, EditNotes.id);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16,bottom: 16 , left: 8),
        decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title:const Text('Flutter Tips' ,style: TextStyle(color: Colors.black , fontSize: 26),),
                
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text('Build your Career with tharwat samy', style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16),),
                ),
                trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.delete_sharp , color: Colors.black,size: 30,)),
            ),
              Padding(
                padding: const EdgeInsets.only(right: 24,top: 16,bottom: 8),
                child: Text('May 21,2022', style: TextStyle(color: Colors.black.withOpacity(.5) , ),),
              )
          ],
        ),
      ),
    );
  }
}