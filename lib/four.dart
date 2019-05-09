
import 'package:flutter/material.dart';

class FourApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "矩阵",
         home: new Scaffold(
           appBar: AppBar(
             title: new Text("矩阵转换"),
           ),
           body: new Container(
             color: Colors.blue,
             child: new Transform(
               alignment: Alignment.center,
                 transform: Matrix4.rotationZ(0.5),
               child:new Container(
                 padding: EdgeInsets.all(20),
                 color: Colors.deepOrange,
                 child: new Text("测试矩阵"),
               ),
             ),
           ),

         ),
    );
  }
}