import 'package:flutter/material.dart';



//动画测试   AnimatedOpacity
class animdemoApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home:new AnimAppFul()
    );
  }
}
class AnimAppFul extends StatefulWidget{
  @override
  AnimState createState() => new AnimState();
}

class AnimState extends State<AnimAppFul>{
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(""),
      ),
      body: new Center(
        //渐变动画效果
        child: new AnimatedOpacity(
          opacity: isvisible ? 1.0 : 0.3,
          //设置动画时长
          duration: new Duration(
              microseconds: 5000
          ),
          child: new Container(
            width: 300.0,
            height: 300.0,
            color: Colors.deepOrangeAccent,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              isvisible = ! isvisible;
            });
          },
         tooltip: '显示隐藏',
        child: new Text("显示隐藏"),
      ),
    );
  }
}