import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());


  addNote(NotesModel note)async{
    emit(AddNotesLoading());
    try {
  var notesBox = Hive.box<NotesModel>(kNotesBox);
  emit(AddNotesSuccess());
  notesBox.add(note);
} catch (e) {
  emit(AddNotesError(e.toString()));
}
  }
}
