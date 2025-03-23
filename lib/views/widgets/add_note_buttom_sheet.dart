import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNotesButtomSheet extends StatelessWidget {
  const AddNotesButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
           const CustomTextField(hintText: 'Title',),
            const SizedBox(height: 20,),
           const CustomTextField(hintText: 'Content',maxLines: 7,),
           const SizedBox(height: 50,),
          const CustomButton(),
          const SizedBox(height: 30,),
          
          ],
        ),
      ),
    );
  }
}


