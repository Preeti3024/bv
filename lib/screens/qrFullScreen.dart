import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:screenshot/screenshot.dart';
import 'package:share/share.dart';

import '../global.dart';

final ScreenshotController screenshotController = ScreenshotController();

class QRFullScreen extends StatefulWidget {
  @override
  _QRFullScreenState createState() => _QRFullScreenState();
}

class _QRFullScreenState extends State<QRFullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.extended(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        elevation: 4.0,
        icon: Icon(Icons.share, size: 25),
        label: Text(
          'Share QR Code',
          style: TextStyle(fontSize: 16.0),
        ),
        onPressed: () async {
          final image = await screenshotController.capture();
          if (image != null) {
            await Share.share(image.buffer.asUint8List() as String);
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SizedBox.expand(
        child: Container(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Hero(
                  tag: 'qrFullScreen',
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        myName,
                        style: TextStyle(
                          fontSize: 36.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '$myID',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10.0),
                      // Corrected: Wrap QrImage with a Column widget
                      Column(
                        children: <Widget>[
                          QrImage(
                            data:
                                  
                            embeddedImage:
                                AssetImage('assets/images/ic_launcher.png'),
                            embeddedImageStyle:
                                QrEmbeddedImageStyle(size: Size(30.4, 30.4)),
                          ),
                        ],
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Image.asset('assets/images/logo_long.png'),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      leading: IconButton(
                        icon: Icon(Icons.close),
                        color: Colors.black,
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
