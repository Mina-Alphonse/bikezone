import 'package:flutter/material.dart';

Dialog eventDialog({
  required final BuildContext context,
  required final String name,
}) {
  final double w = MediaQuery.of(context).size.width;
  final double h = MediaQuery.of(context).size.height;
  return Dialog(
    backgroundColor: Colors.white,
    elevation: 1,
    child: Container(
      width: w * 0.35,
      height: h * 0.3,
      padding: EdgeInsets.fromLTRB(w * 0.01, h * 0.03, w * 0.01, h * 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do you want to attend " + name + "?",
            style: TextStyle(
              fontSize: w * 0.02,
              fontWeight: FontWeight.w100,
            ),
          ),
          SizedBox(height: h * 0.04),
          Container(
            width: w * 0.15,
            child: TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText: "Your Name",
                labelStyle: TextStyle(color: Colors.green),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
          ),
          SizedBox(height: h * 0.04),
          Center(
            child: Container(
              width: w * 0.1,
              height: h * 0.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
                onPressed: () {},
                child: Text("Confirm"),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
