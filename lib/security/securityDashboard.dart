import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/appBar.dart';
import '../global.dart';

class SecurityDashBoard extends StatefulWidget {
  @override
  _SecurityDashBoardState createState() => _SecurityDashBoardState();
}

class _SecurityDashBoardState extends State<SecurityDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'Security Dashboard',
        child: Icon(
          Icons.arrow_back_ios,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
        onTitleTapped: () {
          Null;
        },
      ),
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4.0, // Maintain the elevation from RaisedButton
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                primary: Colors.blue, // Maintain the button color
                onPrimary: Colors.white, // Maintain the text color
              ),
              onPressed: () {
                sendMoneyTransaction('Dummy Name', '9999999999', '9999');
              },
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                      color: Colors.white,
                    ),
                    const Text(
                      '   Send Transaction   ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4.0, // Maintain the elevation from RaisedButton
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                primary: Colors.green, // Maintain the button color
                onPrimary: Colors.white, // Maintain the text color
              ),
              onPressed: () {
                getAllTransactions();
              },
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      size: 18.0,
                      color: Colors.white,
                    ),
                    const Text(
                      '   Get Transactions   ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Icon(
                      Icons.arrow_back_ios,
                      size: 18.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 4.0, // Maintain the elevation from RaisedButton
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                primary: Colors.red, // Maintain the button color
                onPrimary: Colors.white, // Maintain the text color
              ),
              onPressed: () {
                setState(() {
                  myHash = '';
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.restore,
                      size: 18.0,
                      color: Colors.white,
                    ),
                    const Text(
                      '   Reset Hash',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
