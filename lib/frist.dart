import 'package:flutter/material.dart';
import 'package:flutter_app2/Second.dart';

class forstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
          appBar: new AppBar(
            title: Text(""),
          ),
          body: new Container(
            child: new jump(),
          )),
    );
  }
}

class jump extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
      onPressed: () {
        _navjump(context);
      },
      child: new Text("跳转开始"),
    );
  }

  //dart异步的方式
  _navjump(BuildContext context) async {
    final restul = await Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new secondDemo(),
        ));
    print("返回的数控**********：" + restul);
    Scaffold.of(context)
        .showSnackBar(new SnackBar(content: new Text('$restul')));
  }
}
