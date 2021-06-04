import 'package:bikezone/pages/RentPage.dart';
import 'package:bikezone/widgets/EventsPage/EventContainer.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  final Color _backgroundColor = Colors.grey.shade900;
  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;

    return Container(
      color: _backgroundColor,
      child: ListView(
          padding: EdgeInsets.fromLTRB(w * 0.04, h * 0.07, w * 0.04, h * 0.02),
          children: [
            Wrap(
              spacing: w * 0.085,
              runSpacing: h * 0.04,
              children: [
                eventContainer(context: context),
                eventContainer(context: context),
                eventContainer(context: context),
                eventContainer(context: context),
                eventContainer(context: context),
                eventContainer(context: context),
                eventContainer(context: context),
                eventContainer(context: context),
                eventContainer(context: context),
                eventContainer(context: context),
              ],
            ),
          ]),
    );
  }
}
