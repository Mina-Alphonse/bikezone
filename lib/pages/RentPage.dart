import 'package:flutter/material.dart';

class RentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green.shade700,
      body: Container(
          width: size.width,
          child: ListView(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bikecards(),
                  bikecards(),
                  bikecards(),
                  bikecards(),
                ],
              ),
            ],
          )),
    );
  }
}

Widget bikecards() {
  return Container(
    alignment: Alignment.topCenter,
    height: 430,
    width: 336,
    child: Card(
      margin: EdgeInsets.all(30),
      elevation: 20,
      shadowColor: Colors.black,
      child: Column(
        children: [
          Image.asset('assets/test2.jpg'),
          SizedBox(
            height: 10.0,
          ),
          Text('Bike Name: BMX'),
          SizedBox(
            height: 10.0,
          ),
          Text('Rent Price: 12 EGP.'),
        ],
      ),
    ),
  );
}
