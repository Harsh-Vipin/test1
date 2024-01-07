// Importing the Hive package for Flutter
import 'package:hive_flutter/hive_flutter.dart';

// Importing the generated part file for the Hive adapter
part 'note_model.g.dart';

// Declaring the HiveType annotation with a typeId of 0 for the NoteModel class
@HiveType(typeId: 0)
// Extending HiveObject to make the class compatible with Hive
class NoteModel extends HiveObject {
  // HiveField annotation with a field index for each property in the class
  @HiveField(0)
  String title;

  @HiveField(1)
  String subTitle;

  @HiveField(2)
  final String date;

  @HiveField(3)
  int color;

  // Constructor for initializing the NoteModel instance
  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
