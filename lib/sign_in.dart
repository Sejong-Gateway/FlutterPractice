import 'package:flutter/material.dart';

class Signinpage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _Signinpage createState() => new _Signinpage();
}

class _Signinpage extends State<Signinpage> {
  @override
  Widget build(BuildContext context) {
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
    final text3 = RichText(
        text: TextSpan(
      text: "전공",
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
    ));
    final text4 = RichText(
        text: TextSpan(
      text: "공학인증여부",
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
    ));
    final text5 = RichText(
        text: TextSpan(
      text: "이수학기",
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
    ));

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: '학번을 입력해주세요',
        hintStyle: TextStyle(
            fontSize: 12.0, fontWeight: FontWeight.w300, color: Colors.grey),
        contentPadding: EdgeInsets.fromLTRB(0, 10.0, 20.0, 10.0),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: ('비밀번호를 입력해주세요'),
        hintStyle: TextStyle(
            fontSize: 12.0, fontWeight: FontWeight.w300, color: Colors.grey),
        contentPadding: EdgeInsets.fromLTRB(0, 10.0, 20.0, 10.0),
      ),
    );

    final loginButton = Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: RaisedButton(
        onPressed: () {},
        padding: EdgeInsets.fromLTRB(128, 12, 128, 12),
        color: Colors.blue,
        child: Text('로그인',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
    );
    final select = ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {},
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text('전공을 선택해주세요',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300)),
            );
          },
          body: ListTile(
            title: Text('Item 1 child'),
            subtitle: Text('Details goes here'),
          ),
          isExpanded: false,
        ),
      ],
    );
    final select2 = Container(
        child: ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {},
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text('이수학기를 선택해주세요',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300)),
            );
          },
          body: ListTile(
            title: Text('Item 1 child'),
            subtitle: Text('Details goes here'),
          ),
          isExpanded: false,
        ),
      ],
    ));
    bool checkboxValue = false;
    final select3 = Container(
        margin: EdgeInsets.fromLTRB(0, 13, 0, 0),
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
            Text( "예",
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(width: 38,),
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
            Text( "아니요",
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
        child: ListView(
          padding: EdgeInsets.only(left: 36, right: 37),
          children: <Widget>[
            SizedBox(height: 96,),
            text1,
            email,
            SizedBox(height: 45.0),
            text2,
            password,
            SizedBox(height: 44.5),
            text3,
            SizedBox(height: 15),
            select,
            SizedBox(height: 45.0),
            text4,
            select3,
            SizedBox(height: 45),
            text5,
            SizedBox(height: 15),
            select2,
            SizedBox(height: 60),
            loginButton,
          ],
        ),
      ),
    );
  }
}
