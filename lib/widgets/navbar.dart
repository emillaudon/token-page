import 'package:flutter/material.dart';
import 'dart:html' as html;

class NavBar extends StatefulWidget {
  Function onTap;

  NavBar({this.onTap});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Color(0xFF14274e),
        height: 50,
        width: double.infinity,
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0),
                  child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/comfy-4bb5a.appspot.com/o/comfy.png?alt=media&token=380b9dcf-cdd6-4fbe-9524-9ca7e35396ec'),
                ),
                Container(
                  height: 100.0,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        //'\$COMFY',
                        '',
                        style: TextStyle(
                            fontFamily: 'Schyler',
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(right: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Home',
                      style: TextStyle(color: Colors.blue, fontSize: 25.0),
                    ),
                  ),
                  FlatButton(
                    onPressed: widget.onTap,
                    child: Text(
                      'About',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Collect',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Uniswap',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: FlatButton(
                        onPressed: () {
                          html.window
                              .open("https://t.me/comfydefi", 'Telegram');
                        },
                        child: Container(
                          height: 20.0,
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/comfy-4bb5a.appspot.com/o/telegram.png?alt=media&token=47ee863e-88e8-48b6-a422-fb3044ec5b3f',
                            scale: 1.0,
                          ),
                        ),
                      ))
                ],
              ),
            ))
          ],
        ));
  }
}
