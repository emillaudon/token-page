import 'package:flutter/material.dart';
import 'dart:html' as html;

class Attribution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 20.0,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {
                  html.window.open("https://www.freepik.com/vectors/background",
                      "Background vector created by rawpixel.com - www.freepik.com");
                },
                child: Text(
                  'Background vector created by rawpixel.com - www.freepik.com',
                  style: TextStyle(color: Colors.white, fontSize: 10.0),
                ),
              ),
            ),
          ]),
    );
  }
}
