import 'package:flutter/material.dart';
import 'package:public_transport_app/bottombarinterface.dart';

class AppManager extends StatelessWidget {
  const AppManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BottomBarInterface(),
        ],
      ),
    );
  }
}