import 'package:flutter/material.dart';
import 'package:photos_app/notes.dart';

class NoteDetail extends StatelessWidget {
  static const routeName = '/note_details';

  @override
  Widget build(BuildContext context) {
    final NotesArgument args =
        ModalRoute.of(context).settings.arguments as NotesArgument;
    if (args.note == null) {
      return createNoteWidgets(context, args.note);
    } else {
      return editNotesWidget(context, args.note, args.editable);
    }
  }

  Widget createNoteWidgets(BuildContext context, Note note) {
    return editNotesWidget(context, note);
  }

  Widget editNotesWidget(BuildContext context, Note note,
      [bool editable = true]) {
    TextEditingController _titleEditingController =
        TextEditingController(text: note.title);
    TextEditingController _contentEditingController =
        TextEditingController(text: note.content);
    return Scaffold(
      appBar: AppBar(
        title: Text("Note Details"),
        elevation: 8,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: new InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 16, bottom: 12, top: 12, right: 16),
                  hintText: "Title here"),
              controller: _titleEditingController,
              maxLines: 1,
              autofocus: false,
              autocorrect: false,
              readOnly: !editable,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: new InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 16, bottom: 12, top: 12, right: 16),
                  hintText: "Content details here"),
              controller: _contentEditingController,
              autofocus: false,
              maxLines: 10,
              autocorrect: false,
              readOnly: !editable,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
              ElevatedButton.icon(
                  onPressed: () {
                    note.title = _titleEditingController.value.text;
                    note.content = _contentEditingController.value.text;
                    if (note.title.isNotEmpty && note.content.isNotEmpty) {
                      Navigator.pop(context, NotesArgument(note, editable));
                    }
                  },
                  icon: Icon(Icons.save),
                  label: Text("Save")),
              ElevatedButton.icon(
                  onPressed: () {
                    if (note.title.isNotEmpty && note.content.isNotEmpty) {
                      var notesArgument = NotesArgument(note, editable);
                      notesArgument.delete = true;
                      Navigator.pop(context, notesArgument);
                    }
                  },
                  icon: Icon(Icons.delete),
                  label: Text("Delete")),
            ],)
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
        ),
      ),
    );
  }
}

class NotesArgument {
  Note note;
  bool editable;
  bool delete = false;

  NotesArgument(this.note, this.editable);
}
