import 'package:flutter/material.dart';
import 'package:medical_app/main.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Quang Tran',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '27 yo Allergy',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.15),
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              flex: 3,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(16)),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'SYS',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '136',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 36),
                                ),
                                Text(
                                  'mmHg',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.15),
                                      fontSize: 16),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(16)),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sleep time',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.nightlight_round,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '8',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 36),
                                ),
                                Text(
                                  ' hours',
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.15),
                                      fontSize: 16),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              flex: 6,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container();
                  }),
              flex: 2,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.white.withOpacity(0.1)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                        'General Information',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Date of birth',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.2)),
                              ),
                              Text(
                                '1 Jan 1900',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Status',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.2)),
                              ),
                              Text(
                                'Hospital',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Status',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.2)),
                              ),
                              Text(
                                'Hospital',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Status',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.2)),
                              ),
                              Text(
                                'Hospital',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
