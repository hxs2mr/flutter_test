
import 'package:flutter/material.dart';

class VieibleDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Home(),
    );
  }
}
class Home extends StatefulWidget{
  @override
  HomeState createState() => new HomeState();
}
class HomeState extends State<Home>
{

  //是否显示
  bool  isvisible = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("是否显示"),
        centerTitle: true,
      ),
      body: new Container(
        child: new Offstage(
          offstage: isvisible,
          child: new Text(
            '123123123',
            style: TextStyle(
              fontSize: 45
            ),

          ),
        )
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: "是否显示",
          onPressed: (){
            setState(() {
              isvisible = !isvisible;
            });
          },
          child: new Icon(Icons.home),
      ),
    );
  }

}