import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

class EditeNotesViewBody extends StatelessWidget {
  const EditeNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical:55),
      child: Column(
        children: [
          CustomAppBar(title: 'Edite Notes',icon: Icons.check,),
        ],
      ),
    );
  }
}