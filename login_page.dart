import 'package:flutter/material.dart';
import 'package:login_page/home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Container(
      width: 78,
      height: 78,
      margin: EdgeInsets.fromLTRB(0, 0, 261, 0),
      color: Colors.blue.shade100,

    );
    final text1 = RichText(
        text: TextSpan(
      text: "학번",
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
    ));
    final text2 = RichText(
        text: TextSpan(
      text: "비밀번호",
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
    ));

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: '학번을 입력해주세요',
        contentPadding: EdgeInsets.fromLTRB(0, 10.0, 20.0, 10.0),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: '비밀번호를 입력해주세요',
        contentPadding: EdgeInsets.fromLTRB(0, 10.0, 20.0, 10.0),
      ),
    );

    final loginButton = Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.fromLTRB(128, 12, 128, 12),
        color: Colors.blue,
        child: Text('로그인',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        '계정이 없으신가요?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );
    bool checkboxValue = true;
    final checkbox = Container(
        margin: EdgeInsets.fromLTRB(240, 19, 0, 0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  checkboxValue = !checkboxValue;
                });
              },
              child: checkboxValue
                  ? Icon(
                      Icons.check_circle_outline,
                      color: Colors.blue,
                      size: 22,
                    )
                  : Icon(
                      Icons.check_circle_outline_rounded,
                      color: Colors.grey,
                      size: 22,
                    ),
            ),
            SizedBox(width: 8),
            Text( "로그인 유지",
            style: TextStyle(
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            )),
          ],
        ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        padding: EdgeInsets.only(top: 68),
        child: ListView(
          padding: EdgeInsets.only(left: 36, right: 37),
          children: <Widget>[
            logo,
            SizedBox(height: 78.0),
            text1,
            email,
            SizedBox(height: 45.0),
            text2,
            password,
            checkbox,
            SizedBox(height: 110.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
