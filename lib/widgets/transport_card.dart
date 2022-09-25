import 'package:flutter/material.dart';
import 'package:public_transport_app/system/routeList.dart';

// ignore: must_be_immutable
class TransportCard extends StatelessWidget {
  RouteModel routeModel;
  final VoidCallback pressSelect;
  final double topValue;
  final double bottomValue;
  
  TransportCard({
    required this.routeModel,
    required this.pressSelect,
    this.topValue = 15,
    this.bottomValue = 0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressSelect,
      child: Container(
        padding: EdgeInsets.only(
          top: 15,
          bottom: 25,
          left: 25,
        ),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: routeModel.colorCode,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 2,
              child: Text(
                routeModel.routeName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(2),
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Center(
                    child: Text(
                  'Elegir',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                )),
              ),
            ),
            Positioned(
              right: 0,
              top: topValue,
              bottom: bottomValue,
              child: Container(
                width: 235,
                child: Image.asset(
                  routeModel.image,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
