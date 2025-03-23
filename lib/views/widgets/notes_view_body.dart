import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical:55),
      child: Column(
        children: [
      
        
      
        CustomAppBar(title: 'Notes', icon: Icons.search,),
         const SizedBox(height: 25,),

         const NotesListView(),
      
        ],
      ),
    );
  }
}




