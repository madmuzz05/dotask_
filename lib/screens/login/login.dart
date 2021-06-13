import 'package:dotask/screens/contains.dart';
import 'package:dotask/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Column(
          children: [
            HeaderLogin(size: size),
            TextTitle(
              text1: "Welcome",
              text2: "back",
            ),
            TextBox(),
            Container(
              // decoration: BoxDecoration(color: kBgColor),
              margin: EdgeInsets.only(left: 20, right: 20, top: 80),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DashBoard();
                  }));
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF718355),
                  onPrimary: Colors.white,
                  minimumSize: Size(265, 47),
                  shape: StadiumBorder(),
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextBox extends StatelessWidget {
  const TextBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail), hintText: "Email or Username"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock), hintText: "Password"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: kBgColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextTitle extends StatelessWidget {
  const TextTitle({Key key, this.text1, this.text2}) : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 20, top: 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            text1,
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: kBgColor),
          ),
          Text(
            text2,
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: kBgColor),
          ),
        ],
      ),
    );
  }
}

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
      height: size.height * 0.27,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.160,
            decoration: BoxDecoration(color: kPrimaryColor),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("assets/icons/logofix1.png"),
                    Text(
                      'Dotask',
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: kBgColor),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
