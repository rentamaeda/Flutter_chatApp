import 'package:chat_app/chat.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ユーザー名入力画面"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'ユーザー名'
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (builder) => ChatPage(_controller.text)));
            },
            child: Text("設定完了", style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
