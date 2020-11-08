import 'package:flutter/material.dart';

class IconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 100.0),
            child: Column(
              children: [
                Icon(
                  Icons.lock,
                  size: 50.0,
                  color: Color(0xFFe7e7de),
                ),
                Container(
                  width: 90.0,
                  child: Text(
                    'Liquidity locked with Trustswap liquidity lock.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.0),
            child: Column(
              children: [
                Icon(
                  Icons.memory,
                  color: Color(0xFFe7e7de),
                  size: 50.0,
                ),
                Container(
                  width: 90.0,
                  child: Text(
                    'Decentralized. No Mint Function.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100.0),
            child: Column(
              children: [
                Icon(
                  Icons.whatshot,
                  color: Color(0xFFe7e7de),
                  size: 50.0,
                ),
                Container(
                  width: 90.0,
                  child: Text(
                    'Deflationary.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100.0),
            child: Column(
              children: [
                Icon(
                  Icons.done,
                  color: Color(0xFFe7e7de),
                  size: 50.0,
                ),
                Container(
                  width: 90.0,
                  child: Text(
                    'Low Team allocation. No dump by team whales.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
