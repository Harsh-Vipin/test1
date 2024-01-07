import 'package:flutter/material.dart';

import 'package:test1/ui/widgets/add_note_bottom_sheet.dart';
import 'package:test1/ui/widgets/notes_view_body.dart';


class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xff241f46),
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(backgroundColor: const Color(0xffe93858),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(Icons.add,color: Colors.white,),
      ),
      body: const NotesViewBody(),
    );
  }
}
