import 'package:flutter/material.dart';
import 'package:imagebutton/imagebutton.dart';
import 'package:color/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyMainPage(title: 'Money Money App'),
    );
  }
}

class MyMainPage extends StatefulWidget {
  MyMainPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageButton(
              children: <Widget>[],
              width: 200,
              height: 200,
              mainAxisAlignment: MainAxisAlignment.end,
              unpressedImage: Image.asset('assets/image/moneymoney.png'),
              pressedImage: Image.asset('assets/image/moneymoney.png'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
                print('Button main pass');
              },
            ),
          ],
        ),
      ),
    );
    return scaffold;
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      // appBar: AppBar(
      //   backgroundColor: Colors.red[200],
      //   title: Text("สมัครสมาชิก"),
      // ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'เพิ่มชื่อบัญชีของคุณ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Mali',
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ชื่อของคุณ',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//testcommit and push01
//NONONO
