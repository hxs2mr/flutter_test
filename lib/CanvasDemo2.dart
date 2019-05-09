import 'package:flutter/material.dart';

class Canvas2App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('绘制组件'),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              child: new SizedBox(
                width: 500,
                height: 500,
                child: new CustomPaint(
                  painter: new CircerPatin(),
                  child: new Text(
                    '绘制圆形',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          new Container(
            child: new SizedBox(
              width: 300,
              height: 300,
              child: new CustomPaint(
                painter: new OvelPatin(),
                child: new Text('绘制椭圆2111',textAlign: TextAlign.center),
              ),
            ),
           ),

          ],

        ),
      ),

    );
  }
}

class OvelPatin extends CustomPainter{
  Paint _paint  = new Paint()
  ..color= Colors.deepPurple
  ..strokeCap = StrokeCap.square
  ..style = PaintingStyle.stroke
  ..strokeWidth = 5.0 ;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Rect rect = Rect.fromPoints(Offset(80.0, 200.0), Offset(300, 300.0));
    canvas.drawOval(rect, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }

}
class CircerPatin extends CustomPainter{
    Paint _paint = new Paint()
    ..color = Colors.deepOrange
    ..style = PaintingStyle.fill
      ..isAntiAlias = true
    ..strokeWidth = 18.0
    ..strokeCap = StrokeCap.square;
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paintr
    canvas.drawCircle(Offset(100.0,  20.0), 50.0, _paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}