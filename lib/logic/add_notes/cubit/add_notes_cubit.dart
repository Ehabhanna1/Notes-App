import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());


Color color = Color(0xfff8aa86);

  addNote(NotesModel note)async{
    note.color = color.value;
    emit(AddNotesLoading());
    try {
       var notesBox = Hive.box<NotesModel>(kNotesBox);

       await notesBox.add(note);
        emit(AddNotesSuccess());
    } catch (e) {
           emit(AddNotesError(e.toString()));
       }
  }
}
