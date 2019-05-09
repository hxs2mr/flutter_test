
import 'package:flutter/material.dart';

class Canvasdemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(title: new Text("")),
        body: new Center(
          child: new SizedBox(
            width: 500,
            height: 500,
            child: new CustomPaint(
              painter: new PaintsDemo(),
            ),
          ),
        ),
      ),
    );
  }
}

//实现画笔的方法
 class LinePater extends CustomPainter{
  //定义画笔
   Paint _paint = new Paint()
   ..color =  Colors.black
   ..strokeCap = StrokeCap.square
   ..isAntiAlias = true
   ..strokeWidth  = 3.0
   ..style = PaintingStyle.stroke ;

   //重写绘制内容方法
  @override
  void paint(Canvas canvas, Size size) {
    //绘制直线
    canvas.drawLine(Offset(20.0, 20.0), Offset(300.0, 20.0), _paint );
  }

  //重写是否需要重绘的
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false ;
  }
 }

 //嵌套矩形
 class RRectDemo extends CustomPainter
 {
   Paint _paint = new Paint()
   ..strokeWidth = 5.0
   ..style = PaintingStyle.fill
   ..color = Colors.blue
   ..strokeCap = StrokeCap.square ; 
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Rect rect1 = Rect.fromCircle(center: Offset(150.0, 150.0),radius: 80.0);
    Rect rect2 = Rect.fromCircle(center: Offset(150.0, 150.0),radius: 40.0);

    RRect rRect1 = RRect.fromRectAndRadius(rect1, Radius.circular(20.0));
    RRect rRect2 = RRect.fromRectAndRadius(rect2, Radius.circular(20.0));

    canvas.drawDRRect(rRect1,rRect2, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
 }
 //绘制点
class PaintsDemo extends  CustomPainter
{
  Paint _paint = new Paint()
  ..color = Colors.deepOrange
  ..strokeCap =   StrokeCap.round
  ..style = PaintingStyle.stroke
  ..strokeWidth = 10.0 ;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Path  path = new Path()..moveTo(200.0, 200.0);
    path.lineTo(200.0, 300.0);
    path.lineTo(150.0, 180.0);
    path.lineTo(70.0, 110.0);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}