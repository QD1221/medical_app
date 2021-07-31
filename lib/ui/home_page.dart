import 'package:flutter/material.dart';

Color backgroundColor = Color(0xff27272c);
Color deepDarkColor = Color(0xff17171b);
Color deepPurpleColor = Color(0xff9292e4);
Color lightPurpleColor = Color(0xffb9b9e3);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Column(
                children: [
                  Expanded(child: Placeholder(color: Colors.purple,)),
                  Expanded(child: Placeholder(color: Colors.purple,)),
                  Expanded(child: Placeholder(color: Colors.purple,))
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
