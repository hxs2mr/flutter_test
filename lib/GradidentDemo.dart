
import 'package:flutter/material.dart';

/**
 * 渐变颜色
 */
class GradentDemo extends StatelessWidget{
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
          //选择盒子
          child:new RotatedBox(
              quarterTurns: 1,
              child: new DecoratedBox(
              decoration: BoxDecoration(
                //现行渐变
                gradient: new RadialGradient(
                  radius: 0.5,
                  center: Alignment(0.0, 0.0),
                  //渐变颜色数据集
                  colors: <Color>[
                    Colors.blue,
                    Colors.deepOrange,
                    Colors.deepPurple
                  ],
                ),
              ),
            child: new Container(
              width: 250,
              height: 250,
              child: new Center(
                child: new Text("环形渐变",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white

                  ),
                ),
              ),
            ),

          ),
    ),
        ),
      ),

    );
  }


}


