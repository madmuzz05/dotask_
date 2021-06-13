import 'package:dotask/screens/contains.dart';
import 'package:dotask/screens/dashboard/components/bottom_nav.dart';
import 'package:dotask/screens/dashboard/components/task_list_dash.dart';
import 'package:dotask/screens/dashboard/components/title_sub_bab.dart';
import 'package:dotask/screens/event/event.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ListTask extends StatelessWidget {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Column(
          children: <Widget>[
            SearchHeader(size: size),
            TitleSubBab(
              text: "Date Task",
              fSize: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                calendarFormat: _calendarFormat,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: TitleSubBab(
                text: "Task",
                fSize: 24,
              ),
            ),
            Expanded(
                child: Stack(
              children: <Widget>[
                Container(
                  height: 65,
                  padding: EdgeInsets.only(top: 10, left: 20, bottom: 25),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      FilterBtnBg(),
                      FilterBtn(),
                      FilterBtn(),
                      FilterBtn(),
                      FilterBtn(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: ListView(
                    children: <Widget>[
                      TaskList(
                          title: "Menyapu rumah",
                          time: "06:30 - 06:31",
                          category: "Home",
                          color1: 0xFFDA1E37),
                      TaskList(
                          title: "Membuat donat",
                          time: "06:31 - 07:30",
                          category: "Home",
                          color1: 0xFF0EAD69),
                      TaskList(
                          title: "Berjualan donat",
                          time: "07:30 - 15:30",
                          category: "Work",
                          color1: 0xFF0EAD69),
                      TaskList(
                          title: "Berjualan mie ayam",
                          time: "14:00 - 22:30",
                          category: "Work",
                          color1: 0xFFFF9505),
                      TaskList(
                          title: "Berjualan mie ayam",
                          time: "14:00 - 22:30",
                          category: "Work",
                          color1: 0xFFFF9505),
                    ],
                  ),
                ),
                BottomNavigation(
                  home: "assets/icons/home1.png",
                  list: "assets/icons/list.png",
                  user: "assets/icons/user1.png",
                  event: "assets/icons/event1.png",
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class FilterTask extends StatelessWidget {
  const FilterTask({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 30,
        width: 95,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: kBgColor),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not Completed",
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      color: kBgColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchHeader extends StatelessWidget {
  const SearchHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 45),
      height: size.height * 0.150,
      child: Stack(
        children: <Widget>[
          Container(
              height: size.height * 0.10,
              decoration: BoxDecoration(color: kPrimaryColor),
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    height: 45,
                    width: 363,
                    decoration: BoxDecoration(
                        color: kCardColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(color: kCardColor)),
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search"),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
