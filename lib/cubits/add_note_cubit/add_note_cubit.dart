// Importing necessary packages and files
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:test1/utils/constants.dart';
import 'package:test1/models/note_model.dart';

// Importing the generated part file for AddNoteState
part 'add_note_state.dart';

// Cubit class responsible for managing the state of adding a note
class AddNoteCubit extends Cubit<AddNoteState> {
  // Constructor initializing the cubit with the initial state
  AddNoteCubit() : super(AddNoteInitial());

  // Default color for a new note
  Color color = const Color(0xffAC3931);

  // Method for adding a new note
  addNote(NoteModel note) async {
    // Setting the color value for the note
    note.color = color.value;

    // Emitting loading state
    emit(AddNoteLoading());

    try {
      // Accessing the Hive box for NoteModel instances
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      // Adding the new note to the box
      await notesBox.add(note);

      // Emitting success state
      emit(AddNoteSuccess());
    } catch (e) {
      // Emitting failure state with error information
      emit(AddNoteFailure(e.toString()));
    }
  }
}
