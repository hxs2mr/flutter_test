import 'package:flutter/material.dart';

class ClipDemoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("剪切"),
        ),
        body: new Center(
              child: new ClipRRect(
                borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
                  child: new SizedBox(
                    width: 200,
                    height:  200,
                    child: new Image.asset(
                        "images/1.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
              ),
        ),
      ),
    );
  }
}