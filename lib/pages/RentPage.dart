import 'package:bikezone/widgets/EventsPage/RentDialog.dart';
import 'package:flutter/material.dart';

class RentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var pageWidth = size.width;
    var pageHeight = size.height;

    if (pageWidth < 800) {
      pageHeight *= 0.7;
      pageWidth *= 2;
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
          width: size.width,
          height: size.height,
          child: ListView(
            children: [
              Wrap(
                children: [
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                  bikecards(context, pageHeight, pageWidth),
                ],
              ),
            ],
          )),
    );
  }
}

Widget bikecards(BuildContext context, var pheigth, var pwidth) {
  return GestureDetector(
    onTap: () => showDialog(
      context: context,
      builder: (context) => rentDialog(
        context: context,
      ),
    ),
    child: Container(
      alignment: Alignment.topCenter,
      height: pheigth * 0.7,
      width: pwidth * 0.25,
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
    ),
  );
}
