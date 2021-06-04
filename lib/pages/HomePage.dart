import 'package:bikezone/widgets/HomePage/CustomContainer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Color _containerColor = Colors.black;
  final Color _backgroundColor = Colors.grey.shade900;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

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
              ),
              customContainer(
                w: w,
                h: h,
                containerColor: _containerColor,
              ),
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
              ),
              customContainer(
                w: w,
                h: h,
                containerColor: _containerColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
