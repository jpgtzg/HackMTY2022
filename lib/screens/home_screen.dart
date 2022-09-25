import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:public_transport_app/Account.dart';
import 'package:public_transport_app/screens/transport_details.dart';
import 'package:public_transport_app/widgets/transport_card.dart';

import '../schedule.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example of JSON data as retrieved from the DB
    String schJson = """[{
   "fromTime":"10:00",
   "toTime":"10:30",
   "location":"Lorem MRT Station",
   "price":5.0
},
{
   "fromTime":"11:05",
   "toTime":"11:45",
   "location":"Lorem MRT Station",
   "price":5.0
},
{
   "fromTime":"11:25",
   "toTime":"12:30",
   "location":"Lorem MRT Station",
   "price":3.0

}]""";
    var dSch = jsonDecode(schJson);
    var schedules =
        (dSch as List).map((data) => new Schedule.fromJson(data)).toList();

    // Example of JSON data as retrieved from the DB
    String accJson =
        '{"firstName": "John", "lastName": "Doe", "balance": 18, "rewards": 10.25, "trips": 189}';

    var dAcc = jsonDecode(accJson);
    Account account = Account.fromJson(dAcc);

    return Scaffold(
      backgroundColor: Color(0xFF1E91D6),
      body: Stack(children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    const Color(0xFF1E91D6).withOpacity(0.3),
                    BlendMode.srcOver),
                image: AssetImage("assets/images/circuito.jpeg"),
                fit: BoxFit.cover),
          ),
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Image.network(
                  "https://i.imgur.com/zofzkGO.png",
                  height: 160,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20.0,
                left: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            prefixIcon: Image.asset('assets/icons/search2.png'),
                            labelText: "Escribe tu destino",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 20,
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.only(top: 30),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 1.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Circuito TEC',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 15),
                              TransportCard(
                                background: Color(0xFF4CB944),
                                name: 'Garza Sada ',
                                image: 'assets/images/bus.png',
                                pressSelect: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return TransportDetails(
                                        title: "Bus",
                                        image: 'assets/images/bus.png',
                                        location: "Lorem BUS Station",
                                        destination: "Dolor BUS Station",
                                        schedules: schedules);
                                  }));
                                },
                              ),
                              SizedBox(height: 16),
                              TransportCard(
                                background: Color(0xFF4CB944),
                                name: 'Revolución',
                                image: 'assets/images/bus.png',
                                pressSelect: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return TransportDetails(
                                        title: "Bus",
                                        image: 'assets/images/bus.png',
                                        location: "Lorem BUS Station",
                                        destination: "Dolor BUS Station",
                                        schedules: schedules);
                                  }));
                                },
                              ),
                              SizedBox(height: 16),
                              TransportCard(
                                background: Color(0xFF4CB944),
                                name: 'Hosp. & Esc.',
                                image: 'assets/images/bus.png',
                                pressSelect: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return TransportDetails(
                                        title: "Bus",
                                        image: 'assets/images/bus.png',
                                        location: "Lorem BUS Station",
                                        destination: "Dolor BUS Station",
                                        schedules: schedules);
                                  }));
                                },
                              ),
                              SizedBox(height: 16),
                              TransportCard(
                                background: Color(0xFF4CB944),
                                name: 'Valle Alto',
                                image: 'assets/images/bus.png',
                                pressSelect: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return TransportDetails(
                                        title: "Bus",
                                        image: 'assets/images/bus.png',
                                        location: "Lorem BUS Station",
                                        destination: "Dolor BUS Station",
                                        schedules: schedules);
                                  }));
                                },
                              ),
                              SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
