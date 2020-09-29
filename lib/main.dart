import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titelSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Titel of Image1",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "sub title",
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red,
        ),
        Text("90")
      ]),
    );
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtomColumn(color, Icons.call, 'call'),
          _buildButtomColumn(color, Icons.near_me, 'route'),
          _buildButtomColumn(color, Icons.share, 'share'),
        ],
      ),
    );

    Widget TextSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text("Titel of Image Titel of Image Titel of Image "
          "Titel of Image Titel of "
          "Image Titel of Image Titel of Image Titel of Image"
          "Image Titel of Image Titel of Image Titel of Image"),
    );

    /* Widget ImageSection = Container(
      padding: const EdgeInsets. all(20),


    );*/

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Study Jum Flutter"),
          ),
          body: Column(
            children: <Widget>[
              Container(
                  width: 100,
                  height: 100,
                  //padding: const EdgeInsets.all(32),
                  child: Image.asset("image/flutter-image.jpg")),
              titelSection,
              buttonSection,
              TextSection,
              //ImageSection
            ],
          )),
    );
  }

  Column _buildButtomColumn(Color color, IconData icon, String label) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
