import 'package:dotask/screens/contains.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Column(
          children: <Widget>[
            HeaderLogin(size: size),
            TextTitle(
              text1: "Welcome",
              text2: "back",
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: "Email or Username"),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock), hintText: "Password"),
                    ),
                  ],
                )),
          ],
        ),
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
