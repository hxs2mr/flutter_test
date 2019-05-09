
import 'package:flutter/material.dart';
class WrapDemoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(""),
        ),
        body: new Wrap(
          spacing: 8.0,//chip直接的间隙大小
          runSpacing: 5.0,//行之间的间隙大小
          children: <Widget>[
            new Chip(
            avatar: new CircleAvatar(backgroundColor: Colors.brown, child: new Text("1")),
              label: new Text("西门庆"),
            ),
            new Chip(
              backgroundColor: Colors.deepOrange,
                avatar: new CircleAvatar(backgroundColor: Colors.blue,child: new Text("2"),),
                label: new Text("王飒飒")
            ),
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.brown, child: new Text("3")),
              label: new Text("西门庆"),
            ),
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.brown, child: new Text("4")),
              label: new Text("西门庆"),
            ),
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.brown, child: new Text("5")),
              label: new Text("西门庆"),
            ),
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.brown, child: new Text("6")),
              label: new Text("西门庆"),
            ),
            new Chip(
              avatar: new CircleAvatar(backgroundColor: Colors.brown, child: new Text("7")),
              label: new Text("西门庆"),
            ),
          ],
        ),
      ),

    );
  }
}