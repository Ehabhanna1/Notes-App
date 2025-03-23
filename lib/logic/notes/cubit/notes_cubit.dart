import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());



  fetchAllNotes() async {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box<NotesModel>(kNotesBox);
      await notesBox.values.toList();
      List<NotesModel> notes = notesBox.values.toList();

      emit(NotesSuccess(notes));
      
    }catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
