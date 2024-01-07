// Importing necessary packages and files
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:test1/models/note_model.dart';
// Importing the application constants
import '../../utils/constants.dart';
// Importing the generated part file for NotesState
part 'notes_state.dart';



// Cubit class responsible for managing the state of notes
class NotesCubit extends Cubit<NotesState> {
  // Constructor initializing the cubit with the initial state
  NotesCubit() : super(NotesInitial());

  // List to store the fetched notes
  List<NoteModel>? notes;

  // Method for fetching all notes from the Hive box
  fetchAllNotes() {
    // Accessing the Hive box for NoteModel instances
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    // Retrieving all notes from the box and storing them in the 'notes' list
    notes = notesBox.values.toList();

    // Emitting success state after fetching notes
    emit(NotesSuccess());
  }
}
