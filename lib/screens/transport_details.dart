import 'package:flutter/material.dart';
import 'package:public_transport_app/system/routeList.dart';

import '../widgets/from_to_card.dart';

class TransportDetails extends StatelessWidget {
  RouteModel routeModel;

  TransportDetails({required this.routeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: routeModel.colorCode,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 50.0),
            child: Center(
                child: Text(
              routeModel.routeName,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Myriad Pro',
                fontWeight: FontWeight.w700,
                fontSize: 35.0,
              ),
            )),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 240,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/bus.png'),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: .8,
                    blurRadius: 4,
                    offset: Offset(1, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FromToCard(from: "asd", to: "asd"),
                  SizedBox(height: 25),
                  Text(
                    'Horarios',
                    style: TextStyle(
                      fontFamily: 'MyriadPro',
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          // for (Schedule schedule in routeModel.routeTimes) ...[
                          //   ScheduleBox(
                          //     fromTime: schedule.fromTime,
                          //     toTime: schedule.toTime,
                          //     location: schedule.location,
                          //     pressSelect: () {},
                          //   ),
                          // ]
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
