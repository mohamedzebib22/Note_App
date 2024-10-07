part of 'notescubit_cubit.dart';

@immutable
abstract class NotescubitState {}
class NotescubitInitial extends NotescubitState {}
class NotescubitLoading extends NotescubitState {}
class NotescubitSucsess extends NotescubitState {
  final List<NoteModel> notes;

  NotescubitSucsess(this.notes);
}
class NotescubitFailure extends NotescubitState {
  final String errMessage;

  NotescubitFailure({required this.errMessage});
}
