import 'package:dotask/screens/contains.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key key, this.home, this.list, this.user, this.event})
      : super(key: key);

  final String home, list, user, event;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(10),
        child: SizedBox(
          width: 364,
          height: 71,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(home),
                  Image.asset(list),
                  SizedBox(
                    width: 62,
                    height: 62,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: kBgColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset("assets/icons/Add.png")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Image.asset(user),
                  Image.asset(event),
                ],
              ),
            ),
          ),
        ));
  }
}
