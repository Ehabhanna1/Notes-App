import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 7,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: const NoteItem(),
          );
        }
        ),
    );
  }
}
