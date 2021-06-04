import 'package:bikezone/pages/EventsPage.dart';
import 'package:bikezone/pages/HomePage.dart';
import 'package:bikezone/pages/RentPage.dart';
import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    //  double h = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: TabBar(
              indicatorColor: Colors.green,
              tabs: [
                Tab(text: "Home"),
                Tab(text: "Events"),
                Tab(text: "Rent"),
                Tab(text: "Feedbacks"),
              ],
            ),
            title: Image.asset(
              'assets/logo.jpg',
              height: 250,
              width: 200,
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              EventsPage(),
              RentPage(),
              Container(
                color: Colors.grey.shade900,
                child: Center(
                  child: Text(
                    "No Feedbacks yet, stay tuned!",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: w * 0.04,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
