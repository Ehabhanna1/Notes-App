import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNotesButtomSheet extends StatelessWidget {
  const AddNotesButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 32,),
           const CustomTextField(hintText: 'Title',),
            const SizedBox(height: 15,),
           const CustomTextField(hintText: 'Content',maxLines: 7,),
          ],
        ),
      ),
     

      

    );
  }
}