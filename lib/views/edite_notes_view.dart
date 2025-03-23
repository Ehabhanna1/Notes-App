import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/Edite_notes_view_body.dart';

class EditeNotesView extends StatelessWidget {
  const EditeNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const EditeNotesViewBody(),
    );
  }
}