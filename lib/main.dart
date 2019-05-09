import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app2/AnimDemo.dart';
import 'package:flutter_app2/CanvasDemo.dart';
import 'package:flutter_app2/CanvasDemo2.dart';
import 'package:flutter_app2/ClipDemo.dart';
import 'package:flutter_app2/DissmibDemo.dart';
import 'package:flutter_app2/GradidentDemo.dart';
import 'package:flutter_app2/Visible.dart';
import 'package:flutter_app2/WrapDemo.dart';
import 'package:flutter_app2/four.dart';
import 'package:flutter_app2/frist.dart';
void main() => runApp(new animdemoApp());
class FraceDemo extends StatelessWidget{
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
          color: Colors.deepOrange,
          height: 250.0,
          width: 200.0,
          child: new FractionallySizedBox(
            alignment: Alignment(0.0, 0.0),
            widthFactor: 0.5,
            heightFactor: 1.5,
            child: new Container(
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

class StackDemo1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(   
        appBar: new AppBar( 
          title: new Text(""),
        ),
        body: new Center(
          child: new Stack(
            children: <Widget>[
              new Image.network("https://f11.baidu.com/it/u=2370052824,3689916628&fm=72"),
              new Positioned(
                    bottom: 150.0,
                    left: 50.0,
                child: new Text(
                  '在那个位置',
                ),

              )
            ],
          )
            
          ),
        ),
    );
  }
}

//覆盖布局 相当于android Fragment中的效果 默认左上角对齐
class StackDemo extends StatelessWidget{
  var stack = new Stack(
      //子组件左上对齐
    alignment: new Alignment(1.0, 0.0),
    children: <Widget>[
      new CircleAvatar(
        backgroundImage: new AssetImage('images/1.jpg'),
        radius: 100.0,
      ),
      new Container(
        decoration: new BoxDecoration(
          color: Colors.grey,
        ),
        child: new Text(
          'Android是无敌的',
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0
          ),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Fagment"),
        ),
        body: new Center(
          child: stack,
        ),
      ),
    );
  }
}
class ImageDemoGrivate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("位置摆放"),
          ),
          //栈布局
          body: new Stack(
            children: <Widget>[
              //左上角
              new Align(
                alignment: FractionalOffset(0.0, 0.0),
                child: new Image.asset('images/1.jpg',width: 100,height: 100),
              ),
              //右上角
              new Align(
                alignment: FractionalOffset.topRight,

                child: new Image.asset('images/1.jpg',width: 100,height: 100),
              ),

              //垂直居中
              new Align(
                alignment: FractionalOffset.center,
                child: new Image.asset('images/1.jpg'),
              ),
              //左下角
              new Align(
                alignment: FractionalOffset.bottomLeft,
               child: new Image.asset('images/1.jpg',width: 100,height: 100),
              ),
              new Align(
                alignment: FractionalOffset.bottomRight,
                child: new Image.asset('images/1.jpg',width: 100,height: 100),
              )
              
            ],
          ),
        ),
    );
  }
}

class ISO extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new IOSTab(),
    );
  }
}
class IOSTab extends StatefulWidget{
   @override
    _IOSBottmState createState()=>_IOSBottmState();
}
class _IOSBottmState extends State<IOSTab>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.lightBackgroundGray,
            items: [
              //选项卡项 包含图标几文字
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home,size: 35,),
                title: Text('主页',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.conversation_bubble,size: 35,),
                title: Text('聊天',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
              ),
            ]
        ),
      tabBuilder: (context,index){
          //选项卡绑定的试图
        return CupertinoTabView(
          builder: (context){
            switch(index)
            {
              case 0:
                return new Home();
                break;
              case 1:
                return new Chat();
                break;
              default:

                break;
            }
          },
        );
      },
    );
  }

}
//聊天界面
class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: new Text("聊天"),
        trailing: Icon(CupertinoIcons.add),
        leading: Icon(CupertinoIcons.back),
      ),
      child: new Center(
        child: new Text('聊天的界面',style: TextStyle(
          fontSize: 20.0,
        ),),
      ),
    );
  }
}

//IOS风格
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(""),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Divider(height: 50),
              new CupertinoActivityIndicator(
                radius: 25,
              ),
              new Divider(height: 50,color: Colors.grey),
              new CupertinoAlertDialog(
                title: new Text("温馨提醒123123\n123123"),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      new Divider(height: 50,),
                      new CupertinoDialogAction(
                          child: new Text("确认"),
                         onPressed: (){},
                      )
                    ],
                  ),
                ),
              ),
              new Divider(height: 20),
              new CupertinoButton(
                  child: new Text("开始测试"),
                  color: Colors.brown,
                  onPressed: null
              )
            ],


          ),

        ),

      ),

    );
  }
}

//Card组件
class CardDemo extends StatelessWidget{
  var card =  new SizedBox(
    height: 250.0,
    child: new Card(
      margin: EdgeInsets.all(20),
      child: new Column(
        children: <Widget>[
          new ListTile(
            title: new Text('xxxx地址',style: TextStyle(
              fontWeight: FontWeight.w300
            ),),
            subtitle: new Text("顶顶顶顶"),
            leading: new Icon(Icons.home),
          ),
          new Divider(height: 20,color: Colors.grey),
          new ListTile(
          title: new Text("帝艾斯的",style: TextStyle(
            fontWeight: FontWeight.w200
          ),),
          subtitle: new Text('撒旦撒旦'),
          leading: new Icon(Icons.subscriptions),
        ),
          new Divider(height: 10.0,color: Colors.grey)
        ],
      ),

    ),

  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("卡片式布局"),
        ),
        body: new Center(
          child: card,
        ),
      ),
    );
  }
}

//对话弹窗
 class DialogDemo extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
    // TODO: implement build
     return new MaterialApp(
       title: "123",
       home: new Scaffold(
         appBar: new AppBar(
           title: new Text("123"),
           actions: <Widget>[
             IconButton(icon: new Icon(Icons.tab)),
             IconButton(icon: new Icon(Icons.map)),
           ],
         ),
         body:new Center(
          child: new SimpleDialog(
            title: new Text("比挨踢"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: (){},
                child: new Text("第一行"),
              ),
              SimpleDialogOption(
                onPressed: (){},
                child: new Text("第二韩"),
                
              )

            ],

          )
         ) ,
           bottomNavigationBar: new BottomAppBar(
             child: new Container(
               height: 20,
             ),
           ),
           floatingActionButton: new Builder(builder: (BuildContext context){
             return new FloatingActionButton(
               child: new Icon(Icons.add),
                 elevation:10,
                 highlightElevation: 5,
                 onPressed: (){
                 Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("点击了")));
                 },
                  mini: false,
               //圆形边
               shape: new CircleBorder(),
               isExtended: false,

             );
           }),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       ),

     );
    }
 }

//Drawer（抽屉组件）
class DrawerDemo extends StatelessWidget{

  List<String> items;
  DrawerDemo({Key key,this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: '标题',
      home: new Drawer1(),

    );
  }
}

class Drawer1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('抽屉组件'),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            //设置用户头像  用户名  email
            UserAccountsDrawerHeader(
              accountName: new Text('和销售'),
              accountEmail: new Text('1363826037@qq.com'),
              //设置头像
              currentAccountPicture:new CircleAvatar(
                backgroundImage: new AssetImage("floatingActionButton"),
              ),
            onDetailsPressed: (){},
              otherAccountsPictures: <Widget>[
                new Container(
                  child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557309945356&di=1a8d43e373617d054098fb4d1d3b3a73&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F20182%2F21%2F2018221142159_MZ33z.jpeg"),
                ),
                new Container(
                  child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557310005155&di=4c8d45293c46276a125ea7e637a8786b&imgtype=0&src=http%3A%2F%2Fimg.zhiribao.com%2Fupload%2Fimages%2F201607%2F6%2F6b0152a5b29f309f3f92f52adc6cd017eae73133.jpg"),
                ),
              ],
            ),
            ListTile(
              leading: new CircleAvatar(child: Icon(Icons.color_lens)),
              title: new Text("个性装扮"),
            ),
            ListTile(
              leading: new CircleAvatar(child: Icon(Icons.photo)),
              title: new Text("我的相册"),
            ),
            ListTile(
              leading: new CircleAvatar(backgroundColor: Colors.deepPurple,child: Icon(Icons.wifi,color: Colors.deepOrange),),
              title: Text('流量来了'),
            )

          ],
        ),
      ),

    );
  }
}

//TabBar
class TabBarDemo extends StatelessWidget{
  List<String>  items;
  TabBarDemo({Key key,this.items}):super(key:key);
  //选项卡数据
  final List<Tab> myTab = <Tab>[
    new Tab(icon: Icon(Icons.laptop_windows),text: '首页'),
    new Tab(icon: Icon(Icons.account_balance),text: '个人'),
    ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      //用来组织TabBar几TabBarView 
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: new AppBar(
            title: new Text("首页选项卡"),
            centerTitle: true,
            //添加导航栏
            bottom: TabBar(
                isScrollable: true,
                tabs: myTab
            ),
          ),
          body: new TabBarView(
              children: myTab.map((Tab tab){
                return new Center(child: Text(tab.text));
              }).toList(),
          ),
        ),
      ),
    );
  }
}
//底部导航
class HomeBottomApp extends StatelessWidget{
  List<String> items;
  HomeBottomApp({Key key,@required this.items}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '测试',
      home: new  BottomDemo(),
    );
  }
}
//底部
class BottomDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new  Scaffold(
      appBar: new AppBar(
        title: new Text('首页'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,size: 29),
            tooltip: '搜索',
            onPressed: (){},
          ),
          IconButton(
            icon:Icon(Icons.add,size: 30),
            tooltip: '添加',
            onPressed: (){},
          )

        ],

      ),
      body: new Center(
        child: new Text('内容中心'),
      ),
      //底部导航栏
       bottomNavigationBar: new BottomAppBar(
         child: new Container(
           height:60.0,
         ),
         //添加FAB添加按钮
       ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: (){},
        tooltip: "增加",
        child: Icon(Icons.add,color: Colors.brown,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
class HomeApp extends StatelessWidget {
  List<String> items;
  HomeApp({Key key, @required this.items}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "挑战界面",
      home: new HomePage(),
      //路由初始化
      routes: {
        '/first': (BuildContext context) => FirstPage(), //添加路由
        '/second':(BuildContext context) => Second(),
        //路由起始页
      },
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  HomePageState createState() =>new HomePageState();
}
class HomePageState extends State<HomePage>
{ 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('示例'),
        ),
        body: new Column(
           children: <Widget>[
             new Text(
               '这是主页',
               style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),
             ),
             new RaisedButton(
                 onPressed: (){
                   Navigator.pushNamed(context, '/first');
                 },
               child: new Text(
                 '第一页'
               ),
             )

           ],
        ),
    );
  }
}
class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
       title: Text("这是第一页"),
    ),
  body: Center(
    child: RaisedButton(
      onPressed: (){
          //路由挑战到第二个页面
         Navigator.pushNamed(context, '/second');
          },
          child: new Text(
          '这是第一页',
          style: TextStyle(fontSize: 22.0),
        ),
      ),
     ),
    );
  }
}

//第二个路由页面
class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("这是第二个页"),
      ),
      body: new Center(
        child: RaisedButton(
            onPressed: (){Navigator.pushNamed(context, '/first'); },
           child: new Text(
             '这是第二页',
             style: TextStyle(fontSize: 22.0),
           ),
        ),

      ),

    );
  }
}

//表单组件    有状态控件
class MyFormApp extends StatefulWidget{
  List<String> items;
  MyFormApp({Key key,@required this.items}):super(key:key);
  @override
  _MyFormState createState() => new _MyFormState();
}
class _MyFormState extends State<MyFormApp>
{
  //全局KEY用来获取Form表单组件
  GlobalKey<FormState> loginKey = new GlobalKey();
  //用户名
  String UserName;
  String Password;
  //
  void login( BuildContext context)
  {
    //读取当前form状态
    var loginForm = loginKey.currentState;
    //验证form表单
    if(loginForm.validate())
      {
        loginForm.save();
        print("username"+UserName  + "  PASSWORD:"+Password);
      }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "表单demo",
      routes: {
        '/home':(BuildContext context)=> HomeApp(items: <String>[],),
        '/first':(BuildContext context)=> FirstPage(),
        '/second':(BuildContext context) => Second(),
      },
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          title: new Text(
              "登录",
              textAlign: TextAlign.center,
             style: TextStyle(
               color: Colors.blue,
               fontSize: 25.0
             ),
          ),
        ),
        body: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.symmetric(vertical: 40,horizontal: 25),
              child: new Form(
                key:  loginKey,
                  child: new Column(
                    children: <Widget>[
                    new TextFormField(
                    decoration: new InputDecoration(
                      labelText: "请输入用户名",
                    ),
                      onSaved: (value){
                      UserName = value;
                      },
                      onFieldSubmitted: (value){
                  
                      },
                    ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "请输入密码"
                        ),
                        obscureText: true,
                        validator: (value){
                          return value.length<6?'密码不能少于6位':null;
                        },
                        onSaved: (va){
                          Password =  va;
                        },

                      )
                    ],
                  )
              ),

            ),
          new SizedBox(
            width: 340.0,
            height: 45.0,
            child: new RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/home');
              } ,
              child: new Text("登录",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white
              ),
              ),
              color: Colors.blue,
            ),

          )
          ],

        ),
      ),

    );
  }

}

//测试容器组件
 class MyApp extends StatelessWidget{
   List<String> items;
   MyApp({Key key,@required this.items}):super(key: key);
  @override
  Widget build(BuildContext context) {
    //异步  获取天气数据
    void getWeatherData() async{
      try{
        //实例化一个httpClient对象
      HttpClient httpClient = new HttpClient();
      //发起请求
        HttpClientRequest request = await httpClient.getUrl(Uri.parse("http://t.weather.sojson.com/api/weather/city/101030100"));
        //等待服务器返回数据
        HttpClientResponse response = await request.close();
        
        //使用utf8de解析数据
        var result = await response.transform(utf8.decoder).join();
        //输出
        print("获取天气的值为:"+result);
        //关闭请求
        httpClient.close();
      }catch(e){
        print("请求是吧:$e");
      }finally{
      }
    }

    // TODO: implement build
    return new MaterialApp(
       title: '容器组件例子',
        home:new FormDemo(),
     /*  new Center(
         child: new Container(
           width: 200.0,
           height: 200.0,
           decoration: new BoxDecoration(
             color: Colors.blue,
            border: new Border.all(
              color: Colors.deepPurple,
              width: 8.0
            ),
             borderRadius: new BorderRadius.all(Radius.circular(10.0)),
           ),
           child: new Image.network(
             'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2197147697,3331039578&fm=26&gp=0.jpg',
             fit: BoxFit.fill,
           ),
         ),
       ),*/
    );
  }
 }

 //listview构造器
class ListviewDemo extends StatelessWidget{
  final List<String> items;
 ListviewDemo({Key key,@required this.items}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('列表构造器'),
      ),
      body: new Container(
          child: new ListView.builder(
            itemCount: items.length,
            itemBuilder: (context,index){
              return new ListTile(
                leading: Icon(Icons.transform,size: 40.0,color: Colors.deepOrange),
                title: new Text(
                  '${items[index]}***********'
                ),

              );
            },

          ),
      ),

    );
  }
}
//GridView 网格布局
class GridViewDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
       appBar: new AppBar(
         title: new Text("gridview",style: TextStyle(
           fontSize: 25.0
            ),),
       ),
      body: new GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          Text("数据1", textAlign: TextAlign.center,),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
          Text("数据1"),
        ],
      ),
    );
  }

}
 //图片控件
class ImageDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
       //添加网络图片
      child: new Image.network(
          //图片url
'http://img5.imgtn.bdimg.com/it/u=3300305952,1328708913&fm=26&gp=0.jpg',
//填充模式
fit: BoxFit.fill,
),
);
}
}
//文本控件
class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   new Scaffold(
        appBar: new AppBar(
          title: new Text("文本组件"),
        ),
        //垂直布局
        body:new ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: new Text("添加消息"),
          ),
          ListTile(
            leading: Icon(Icons.print),
            title: new Text("消息1"),
          )
        ],
        )
    );
  }

}

//form表单组件

class FormDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        child: new TextFormField(
        ),

      ),

    );
  }

}