import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/logic/add_notes/cubit/add_notes_cubit.dart';
import 'package:notes_app/views/widgets/add_notes_form.dart';

class AddNotesButtomSheet extends StatelessWidget {
  const AddNotesButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {

  
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {

            if(state is AddNotesError){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text((state).errorMessage.toString())));
            }

             if(state is AddNotesSuccess){
              Navigator.pop(context);
            }

           
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: AddNoteForm());
          },
        ),
      ),
    );
  }
}
