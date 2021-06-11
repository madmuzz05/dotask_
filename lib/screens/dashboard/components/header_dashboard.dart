import 'package:dotask/screens/contains.dart';
import 'package:flutter/material.dart';

class HeaderDashboard extends StatelessWidget {
  const HeaderDashboard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: 20,
      ),
      height: size.height * 0.155,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.13,
            decoration: BoxDecoration(color: kPrimaryColor),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: kSubTextColor),
                      ),
                      Text(
                        'Hi, Roniboy',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: kBgColor),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/images/roni.png",
                    width: 42,
                    height: 42,
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
