import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height - 200,
        width: 800.0,
        child: Align(
          alignment: Alignment.center,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 360,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.apps,
                              color: Color(0xFFe7e7de),
                              size: 50.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Container(
                                height: 80,
                                child: Text(
                                  'Every transaction sends at least 2% of tokens sent to a pool for non-sellers.',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Container(
                                height: 80,
                                child: Text(
                                  'Promise not to sell to get a piece of the pool - Or sell anyway with a penalty.',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.account_balance_wallet,
                              color: Color(0xFFe7e7de),
                              size: 50.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 360,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border(
                          top: BorderSide(color: Colors.white),
                          bottom: BorderSide(color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 130,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(color: Colors.white),
                              left: BorderSide(color: Colors.white))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      child: Text(
                        'Features',
                        style: TextStyle(
                            fontFamily: 'Schyler',
                            color: Colors.white,
                            fontSize: 60.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(color: Colors.white),
                              left: BorderSide(color: Colors.white))),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 360,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border(
                          top: BorderSide(color: Colors.white),
                          bottom: BorderSide(color: Colors.white),
                        )),
                      ),
                      Container(
                        height: 360,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.autorenew,
                              color: Color(0xFFe7e7de),
                              size: 50.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Container(
                                height: 80,
                                child: Text(
                                  'Every day the pool is divided and 5% of the pool is burned forever.',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Container(
                                height: 80,
                                child: Text(
                                  'Promises and penalties reset every day.',
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.update,
                              color: Color(0xFFe7e7de),
                              size: 50.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
