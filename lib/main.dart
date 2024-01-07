// Importing necessary packages and files
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:test1/utils/constants.dart';
import 'package:test1/models/note_model.dart';

// Importing the main notes view
import 'package:test1/ui/notes_view.dart';

// Importing the custom notes cubit
import 'cubits/notes_cubit/notes_cubit.dart';

// Entry point of the application
void main() async {
  // Initializing Hive for Flutter
  await Hive.initFlutter();

  // Registering the Hive adapter for the NoteModel class
  Hive.registerAdapter(NoteModelAdapter());

  // Opening the Hive box for storing NoteModel instances
  await Hive.openBox<NoteModel>(kNotesBox);

  // Running the Flutter application
  runApp(const NotesApp());
}

// Main application widget
class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Providing the NotesCubit to the widget tree using BlocProvider
    return BlocProvider(
      create: (context) => NotesCubit(),
      // Defining the MaterialApp widget with dark theme and custom font
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        // Setting the home screen to the NotesView widget
        home: const NotesView(),
      ),
    );
  }
}
