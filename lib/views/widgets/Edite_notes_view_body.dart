
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic/notes/cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edite_note_colors_list_view.dart';

class EditeNotesViewBody extends StatefulWidget {
  const EditeNotesViewBody({super.key, required this.note});

  final NotesModel note;

  @override
  State<EditeNotesViewBody> createState() => _EditeNotesViewBodyState();
}

class _EditeNotesViewBodyState extends State<EditeNotesViewBody> {

   String? title,discription;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical:55),
      child: Column(
        children: [
          CustomAppBar(title: 'Edite Notes',
          icon: Icons.check,
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.description = discription ?? widget.note.description;
            widget.note.save();

            BlocProvider.of<NotesCubit>(context).fetchAllNotes();

            Navigator.pop(context);
            
            
          },),
          const SizedBox(height: 50,),

          CustomTextField(
            onChanged: (value) {
              title = value;
              
            },
            hintText: widget.note.title,),
          const SizedBox(height: 20,),
          CustomTextField(
            onChanged: (value) {
              discription = value;
              
            },
            hintText: widget.note.description,maxLines: 7,),

            const SizedBox(height: 40,),

             EditeColorListView(note: widget.note,),
        ],
      ),
    );
  }
}


