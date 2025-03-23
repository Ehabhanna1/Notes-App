import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic/add_notes/cubit/add_notes_cubit.dart';
import 'package:notes_app/views/widgets/add_notes_form.dart';

class AddNotesButtomSheet extends StatelessWidget {
  const AddNotesButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text((state).errorMessage.toString())),
            );
          }
      
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state){
           return AbsorbPointer(
             absorbing: state is AddNotesLoading ? true : false,
             child: Padding(
              padding:  EdgeInsets.only(left: 16,right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(child: AddNoteForm()),
                       ),
           );
        }
      ),
    );
  }
}
