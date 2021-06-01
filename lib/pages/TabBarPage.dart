import 'package:bikezone/pages/EventsPage.dart';
import 'package:bikezone/pages/HomePage.dart';
import 'package:bikezone/pages/RentPage.dart';
import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Home"),
                Tab(text: "Events"),
                Tab(text: "Rent"),
              ],
            ),
            title: Text('Bike Zone'),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              EventsPage(),
              RentPage(),
            ],
          ),
        ),
      ),
    );
  }
}
