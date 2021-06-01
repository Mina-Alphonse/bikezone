import 'package:bikezone/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            // bottom: TabBar(
            //   tabs: [
            //     Tab(icon: Icon(Icons.directions_car)),
            //     Tab(icon: Icon(Icons.directions_transit)),
            //     Tab(icon: Icon(Icons.directions_bike)),
            //     Tab(
            //       child: Container(),
            //     ),
            //     Tab(
            //       child: Container(),
            //     ),
            //   ],
            // ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: CustomAppBar(),
            ),
            title: Text('Tabs Demo'),
          ),
          // body: TabBarView(
          //   children: [
          //     Icon(Icons.directions_car),
          //     Icon(Icons.directions_transit),
          //     Icon(Icons.directions_bike),
          //     Container(),
          //     Container(),
          //   ],
          // ),
        ),
      ),
    );
  }
}
