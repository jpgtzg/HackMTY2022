import 'package:flutter/material.dart';
import 'package:public_transport_app/screens/specificmap_screen.dart';
import 'package:public_transport_app/system/routeList.dart';
import 'package:public_transport_app/widgets/schedule_box.dart';
import 'package:public_transport_app/widgets/topbar.dart';

import '../widgets/from_to_card.dart';

// ignore: must_be_immutable
class TransportDetails extends StatelessWidget {
  RouteModel routeModel;

  TransportDetails({required this.routeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: routeModel.colorCode,
      body: Column(
        children: <Widget>[
          TopBar(),
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
                  FromToCard(routeModel: routeModel, from: "asd", to: "asd"),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Horarios',
                        style: TextStyle(
                          fontFamily: 'MyriadPro',
                          fontWeight: FontWeight.w700,
                          fontSize: 26,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SpecMapScreen(mapURL: routeModel.mapURL,);
                            },
                          ),
                        ),
                        child: Text(
                          "Ver mapa",
                          style: TextStyle(
                            fontFamily: 'MyriadPro',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: ListView.builder(
                        itemCount: routeModel.routes.length,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ScheduleBox(
                              time: routeModel.routeTimes[index],
                              location: routeModel.routes[index],
                              pressSelect: () {});
                        },
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
