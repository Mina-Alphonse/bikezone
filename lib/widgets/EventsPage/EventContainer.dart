import 'package:bikezone/widgets/EventsPage/EventDialog.dart';
import 'package:flutter/material.dart';

Widget eventContainer({
  required final BuildContext context,
  final String name = "[Event Name]",
  final String location = "[Event Location]",
  final String date = "[Event Date]",
  final String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
}) {
  final double w = MediaQuery.of(context).size.width;
  final double h = MediaQuery.of(context).size.height;

  final TextStyle titleStyle = TextStyle(
    fontSize: w * 0.017,
    color: Colors.green,
    fontWeight: FontWeight.w900,
  );
  final TextStyle valueStyle = TextStyle(
    fontSize: w * 0.013,
    color: Colors.white,
    fontWeight: FontWeight.w300,
  );

  return GestureDetector(
    onTap: () => showDialog(
      context: context,
      builder: (context) => eventDialog(
        context: context,
        name: name,
      ),
    ),
    child: Container(
      height: h * 0.27,
      width: w * 0.25,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(w * 0.01, 0, w * 0.01, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Event Name:",
                  style: titleStyle,
                ),
                Text(
                  name,
                  style: valueStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Event Location:",
                  style: titleStyle,
                ),
                Text(
                  location,
                  style: valueStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Event Date:",
                  style: titleStyle,
                ),
                Text(
                  date,
                  style: valueStyle,
                ),
              ],
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: w * 0.01,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
