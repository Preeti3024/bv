import 'package:bhimv2/global.dart';
import 'package:flutter/material.dart';

import '../background.dart';
import 'registrationUi.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => new _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  void initState() {
    super.initState();
    getPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Background(
            isImage: true,
            title: '',
          ),
          Register(),
        ],
      ),
    );
  }

  Register() {}
}
