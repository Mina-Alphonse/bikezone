import 'package:bikezone/widgets/HomePage/CustomContainer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Color _containerColor = Colors.black;
  final Color _backgroundColor = Colors.grey.shade900;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    if (w < 800) {
      h *= 0.90;
      w *= 0.95;
    }

    return Container(
      color: _backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customContainer(
                  w: w,
                  h: h,
                  containerColor: _containerColor,
                  title: 'About Us',
                  content: 'Our Content'),
              customContainer(
                  w: w,
                  h: h,
                  containerColor: _containerColor,
                  title: 'Join Us',
                  content: 'Send us an email at BikeZone@gmail.com'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customContainer(
                  w: w,
                  h: h,
                  containerColor: _containerColor,
                  title: 'Contact Us',
                  content: '01222222445 \n BikeZone@gmail.com'),
              customContainer(
                  w: w,
                  h: h,
                  containerColor: _containerColor,
                  title: 'Services',
                  content: 'Events, Renting and much more!'),
            ],
          ),
        ],
      ),
    );
  }
}
