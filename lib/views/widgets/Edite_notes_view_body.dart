
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditeNotesViewBody extends StatelessWidget {
  const EditeNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical:55),
      child: Column(
        children: [
          CustomAppBar(title: 'Edite Notes',icon: Icons.check,),
          const SizedBox(height: 50,),

          CustomTextField(hintText: 'Title',),
          const SizedBox(height: 20,),
          CustomTextField(hintText: 'Content',maxLines: 7,),
        ],
      ),
    );
  }
}