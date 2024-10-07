import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constans.dart';
import 'package:note_app/models/note_model.dart';

part 'notescubit_state.dart';

class Notescubit extends Cubit<NotescubitState> {
  Notescubit() : super(NotescubitInitial());


  fetchAllNotes(NoteModel note) {
   
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      emit(NotescubitSucsess(
        noteBox.values.toList()
      ));
    }catch (e) {
      emit(NotescubitFailure(e.toString()));
    }
  }
}
