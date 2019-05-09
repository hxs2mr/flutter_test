import 'package:flutter/material.dart';

class secondDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(""),
        ),
        body: new Container(
          child: new RaisedButton(
            onPressed: () {
              Navigator.pop(context, "收到返回的数据");
            },
            child: new Text("返回按钮"),
          ),
        ),
      ),
    );
  }
}
