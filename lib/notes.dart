import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:photos_app/note_detail.dart';
import 'package:provider/provider.dart';

class NotesDirectory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context, data, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Notes"),
          elevation: 8,
          centerTitle: true,
        ),
        body: createBody(data),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.playlist_add),
          onPressed: () {
            createNotes(context, data);
          },
        ),
      );
    });
  }

  void createNotes(BuildContext context, Data data) async {
    await _openDetailPage(context, Note("", ""), data);
  }

  void editNote(BuildContext context, Data data, Note note) async {
    await _openDetailPage(context, note, data);
  }

  Future _openDetailPage(BuildContext context, Note note, Data data) async {
    final result = await Navigator.pushNamed(context, NoteDetail.routeName,
        arguments: NotesArgument(note, true));
    if (result is NotesArgument) {
      final note = result.note;
      if (result.delete) {
        data.remove(note);
      } else {
        data.update(note);
      }
    }
  }

  Widget createBody(Data data) {
    return data.dataList.isNotEmpty
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 3.5),
            itemCount: data.dataList.length,
            itemBuilder: (BuildContext context, int index) {
              final item = data.dataList[index];
              //get your item data here ...
              return GestureDetector(
                onTap: () {
                  editNote(context, data, item);
                },
                child: Card(
                  margin: EdgeInsets.all(16),
                  child: ListTile(
                    title: Text(
                      item.title,
                      maxLines: 1,
                    ),
                    subtitle: Text(
                      item.content,
                      maxLines: 1,
                    ),
                  ),
                ),
              );
            },
            shrinkWrap: true,
          )
        : Center(
            child: Text("No Data"),
          );
  }
}

class Data extends ChangeNotifier {
  final dataList = List<Note>();

  void add(Note value) {
    dataList.add(value);
    notifyListeners();
  }

  void remove(Note value) {
    dataList.remove(value);
    notifyListeners();
  }

  void update(Note value) {
    var indexOf = dataList.indexOf(value);
    if (indexOf >= 0) {
      dataList[indexOf] = value;
      notifyListeners();
    } else {
      add(value);
    }
  }
}

class Note {
  String title;
  String content;

  Note(this.title, this.content);
}
