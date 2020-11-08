import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 800.0,
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Be Comfy',
                style: TextStyle(
                    fontFamily: 'Schyler',
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                height: 300,
                width: 550,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(color: Colors.white12),
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 220,
                      width: 200,
                      child: Text(
                        '\$COMFY is designed to reward those that hold their promise to hold with tokens taken from those that trade.',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w200),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Opacity(
                        opacity: 0.75,
                        child: Container(
                          height: 250,
                          child: Image.network(
                              'https://firebasestorage.googleapis.com/v0/b/comfy-4bb5a.appspot.com/o/comfy.png?alt=media&token=380b9dcf-cdd6-4fbe-9524-9ca7e35396ec'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  'Outsmart other holders by playing it right.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "It's time to get",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "\$COMFY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Schyler',
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
