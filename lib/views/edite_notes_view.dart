import 'package:flutter/material.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/Edite_notes_view_body.dart';

class EditeNotesView extends StatelessWidget {
  const EditeNotesView({super.key, required this.note});
  final NotesModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: EditeNotesViewBody(note: note,),
    );
  }
}