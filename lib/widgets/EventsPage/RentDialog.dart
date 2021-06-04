import 'package:flutter/material.dart';

Dialog rentDialog({
  required final BuildContext context,
}) {
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;

  if (w < 800) {
    h *= 1;
    w *= 3.5;
  }

  return Dialog(
    backgroundColor: Colors.white,
    elevation: 1,
    child: SingleChildScrollView(
      child: Container(
        width: w * 0.35,
        height: h * 0.6,
        padding: EdgeInsets.fromLTRB(w * 0.01, h * 0.03, w * 0.01, h * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/test2.jpg',
              height: h * 0.1,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Bike Name: BMX'),
            SizedBox(
              height: 10.0,
            ),
            Text('Rent Price: 12 EGP.'),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Do you want to rent this bike ?",
              style: TextStyle(
                fontSize: w * 0.02,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: h * 0.04),

            //Textfield .............................
            Row(
              children: [
                Container(
                  width: w * 0.15,
                  child: TextField(
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      hintText: "Rent Duration",
                      labelStyle: TextStyle(color: Colors.green),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Price: \$\$\$',
                ),
                SizedBox(height: h * 0.04),
              ],
            ),
            SizedBox(height: h * 0.04),

            //Button ...........................
            Center(
              child: Row(
                children: [
                  Container(
                    width: w * 0.1,
                    height: h * 0.07,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: Text("Back"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: w * 0.1,
                    height: h * 0.07,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                      ),
                      onPressed: () {},
                      child: Text("Rent"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
