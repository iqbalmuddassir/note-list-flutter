import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photos_app/details_page.dart';
import 'package:photos_app/home.dart';
import 'package:photos_app/note_detail.dart';
import 'package:photos_app/notes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    routes: {DetailsPage.routeName: (context) => DetailsPage()},
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));

  runApp(ChangeNotifierProvider(
    create: (context) => Data(),
    child: MaterialApp(
      routes: {
        NoteDetail.routeName: (context) => NoteDetail(),
      },
      title: "Notes App",
      themeMode: ThemeMode.system,
      home: NotesDirectory(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
