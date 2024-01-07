// Part file for the AddNoteCubit, containing the AddNoteState class

// Importing the 'meta.dart' module for annotations
part of 'add_note_cubit.dart';

// Abstract class representing the state of adding a note
@immutable
abstract class AddNoteState {}

// State representing the initial state when adding a note
class AddNoteInitial extends AddNoteState {}

// State representing the loading state when adding a note
class AddNoteLoading extends AddNoteState {}

// State representing the success state after successfully adding a note
class AddNoteSuccess extends AddNoteState {}

// State representing the failure state when an error occurs during note addition
class AddNoteFailure extends AddNoteState {
  // Error message associated with the failure state
  final String errMessage;

  // Constructor for the failure state that takes an error message as a parameter
  AddNoteFailure(this.errMessage);
}
