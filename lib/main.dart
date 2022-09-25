import 'package:flutter/material.dart';
import 'package:public_transport_app/appmanager.dart';


void main() => runApp(MaterialApp(
      home: Main(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'OpenSans'),
    ));

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4CB944),
      body: AppManager(),
      
    );
  }
}
