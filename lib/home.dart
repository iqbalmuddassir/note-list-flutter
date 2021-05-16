import 'package:flutter/material.dart';
import 'package:photos_app/details_page.dart';
import 'package:photos_app/image_capture.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var networkImage = NetworkImage(
        "https://www.apple.com/newsroom/images/values/corporate/standard/Apple_google-partner-on-covid-19-contact-tracing-technology_04102020_inline.jpg.large_2x.jpg");
    var assetImage = Image.asset(
      "images/mountains.jpg",
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        centerTitle: true,
        title: Text("Photos"),
        backgroundColor: Colors.purple,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.7,
        clipBehavior: Clip.none,
        padding: EdgeInsets.all(8),
        children: [
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  alignment: AlignmentDirectional.center,
                  height: 56,
                  child: Text(
                    "This is under construction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Expanded(
                    child: Image(
                      image: networkImage,
                      fit: BoxFit.fitWidth,
                    )),
                ElevatedButton.icon(
                  onPressed: _actionBtnClicked(context, networkImage.url),
                  icon: Icon(Icons.image),
                  label: Text("Images"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  alignment: AlignmentDirectional.center,
                  height: 56,
                  child: Text(
                    "This is under construction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Image(
                          image: networkImage,
                        )),
                    Expanded(child: assetImage),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: _actionBtnClicked(context, networkImage.url),
                  icon: Icon(Icons.image),
                  label: Text("Images"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  alignment: AlignmentDirectional.center,
                  height: 56,
                  child: Text(
                    "This is under construction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Image(
                          image: networkImage,
                        )),
                    Expanded(child: assetImage),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: _actionBtnClicked(context, networkImage.url),
                  icon: Icon(Icons.image),
                  label: Text("Images"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  alignment: AlignmentDirectional.center,
                  height: 56,
                  child: Text(
                    "This is under construction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Image(
                          image: networkImage,
                        )),
                    Expanded(child: assetImage),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: _actionBtnClicked(context, networkImage.url),
                  icon: Icon(Icons.image),
                  label: Text("Images"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  alignment: AlignmentDirectional.center,
                  height: 56,
                  child: Text(
                    "This is under construction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Image(
                          image: networkImage,
                        )),
                    Expanded(child: assetImage),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: _actionBtnClicked(context, networkImage.url),
                  icon: Icon(Icons.image),
                  label: Text("Images"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  alignment: AlignmentDirectional.center,
                  height: 56,
                  child: Text(
                    "This is under construction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Image(
                          image: networkImage,
                        )),
                    Expanded(child: assetImage),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: _actionBtnClicked(context, networkImage.url),
                  icon: Icon(Icons.image),
                  label: Text("Images"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  alignment: AlignmentDirectional.center,
                  height: 56,
                  child: Text(
                    "This is under construction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Image(
                          image: networkImage,
                        )),
                    Expanded(child: assetImage),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: _actionBtnClicked(context, networkImage.url),
                  icon: Icon(Icons.image),
                  label: Text("Images"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  alignment: AlignmentDirectional.center,
                  height: 56,
                  child: Text(
                    "This is under construction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Image(
                          image: networkImage,
                        )),
                    Expanded(child: assetImage),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: _actionBtnClicked(context, networkImage.url),
                  icon: Icon(Icons.image),
                  label: Text("Images"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  alignment: AlignmentDirectional.center,
                  height: 56,
                  child: Text(
                    "This is under construction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Image(
                          image: networkImage,
                        )),
                    Expanded(child: assetImage),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: _actionBtnClicked(context, networkImage.url),
                  icon: Icon(Icons.image),
                  label: Text("Images"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.only(bottom: 6),
                  alignment: AlignmentDirectional.center,
                  height: 56,
                  child: Text(
                    "This is under construction",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Image(
                          image: networkImage,
                        )),
                    Expanded(child: assetImage),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: _actionBtnClicked(context, networkImage.url),
                  icon: Icon(Icons.image),
                  label: Text("Images"),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: _fabClicked(context),
        elevation: 8,
        child: Icon(Icons.add),
      ),
    );
  }

  Function _actionBtnClicked(BuildContext context, String url) {
    return () {
      print("action clicked");
      Navigator.pushNamed(context, DetailsPage.routeName,
          arguments: DetailScreenArguments("Details", url));
    };
  }

  Function _fabClicked(BuildContext context) {
    return () {
      print("FAB clicked");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ImageCapture()));
    };
  }
}