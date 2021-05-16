import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

class DetailsPage extends StatelessWidget {
  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final DetailScreenArguments args =
        ModalRoute.of(context).settings.arguments as DetailScreenArguments;

    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        centerTitle: true,
        title: Text(args.title),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.network(
              args.url,
              width: 240,
              fit: BoxFit.fitWidth,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.exit_to_app),
                    label: Text("Exit")),
                ElevatedButton.icon(
                    onPressed: shareImage(context, args.url),
                    icon: Icon(Icons.ios_share),
                    label: Text("Share")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Function shareImage(BuildContext context, String url) {
  return () async {
    try {
      final ByteData bytes = await rootBundle.load(url);
      final Uint8List list = bytes.buffer.asUint8List();

      final tempDir = await getTemporaryDirectory();
      final file = await new File('${tempDir.path}/image.jpg').create();
      file.writeAsBytesSync(list);
      Share.shareFiles([file.path]);
    } catch (e) {
      print("error = $e");
      Share.share(url, subject: "Copy image URL");
    }
  };
}

class DetailScreenArguments {
  final String title;
  final String url;

  DetailScreenArguments(this.title, this.url);
}
