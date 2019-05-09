
import 'package:flutter/material.dart';


class missDemo extends StatelessWidget{
  //构建测试数据
  List<String> items = new List<String>.generate(30, (i)=>'第几个 ${i + 1}');


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      
      title: "",
      home: new Scaffold(
        appBar: new AppBar(title: new Text(""),),
        body: new  ListView.builder(
          itemCount: items.length,
            //构建列表
           itemBuilder: (context,index){
            final item  = items[index];

            return new Dismissible(
              key: new Key(item),
              onDismissed: (d){
                  items.removeAt(index);
              },
              child: new ListTile(title: new Text('$item')),
            );
         }
        ),
      ),
      
    );
  }
}