import 'package:flutter/material.dart';
import 'package:medical_app/mock/mock_schedule.dart';
import 'package:medical_app/ui/widget/card_widget.dart';

import '../main.dart';

class CalDate {
  int day;
  String weekend;
  bool isEvent;

  CalDate(this.day, this.weekend, {this.isEvent = false});
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CalDate> _calItems = List.generate(
      10,
      (index) => CalDate(
          DateTime.now()
              .add(
                Duration(days: index),
              )
              .day,
          "Tue",
          isEvent: index % 4 == 0 ? true : false));

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                      radius: 32,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Apr. 2021',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      color: Colors.white,
                                      onPressed: () {},
                                    )
                                  ],
                                )),
                                Expanded(
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        height: 58,
                                        width: 58,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 6,
                                              right: 6,
                                              top: 6,
                                              bottom: 6,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.notifications,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              right: 0,
                                              top: 0,
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    lightPurpleColor,
                                                radius: 8,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Good morning, Dr',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'You have 15 patients today',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: ListView.builder(
                        itemCount: _calItems.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: SizedBox(
                              width: 72,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: CircleAvatar(
                                        radius: 32,
                                        backgroundColor:
                                            Colors.white.withOpacity(0.2),
                                        foregroundColor: Colors.white,
                                        child: Text(
                                          '${_calItems[index].day}',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '${_calItems[index].weekend}',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: _calItems[index].isEvent
                                          ? Container(
                                              child: Center(
                                                child: CircleAvatar(
                                                  radius: 4,
                                                  backgroundColor:
                                                      deepPurpleColor,
                                                ),
                                              ),
                                            )
                                          : Container(),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 15,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardWidget(
                            doctorSchedule: doctorScheduleItems[index],
                          ),
                        );
                      },
                      itemCount: doctorScheduleItems.length,
                    ),
                  ),
                  SizedBox(height: 68,),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 64,
                decoration: BoxDecoration(color: deepDarkColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.card_membership),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 24,
              left: 0,
              right: 0,
              child: Center(
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: deepPurpleColor,
                  child: Icon(Icons.add),
                  foregroundColor: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
