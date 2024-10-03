part of 'add_note.dart';

@immutable
abstract class AddNoteCubitState {}

class AddNoteCubitInitial extends AddNoteCubitState {}
class AddNoteCubitLoading extends AddNoteCubitState {}
class AddNoteCubitSucsess extends AddNoteCubitState {}
class AddNoteCubitFailure extends AddNoteCubitState {
  final String errMessage;

  AddNoteCubitFailure(this.errMessage);
}

