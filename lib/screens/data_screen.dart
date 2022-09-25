import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1E91D6),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                'Datos recolectados durante la ultima semana',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey,
                        //     offset: const Offset(
                        //       3.0,
                        //       3.0,
                        //     ),
                        //     blurRadius: 10.0,
                        //     spreadRadius: 2.0,
                        //   ), //BoxShadow
                        //   BoxShadow(
                        //     color: Colors.white,
                        //     offset: const Offset(0.0, 0.0),
                        //     blurRadius: 0.0,
                        //     spreadRadius: 0.0,
                        //   ), //BoxShadow
                        // ],
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                            child: Text(
                              'Numero usuarios promedio',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/images/graph1.jpeg"),
                            height: 300,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white

                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey,
                        //     offset: const Offset(
                        //       5.0,
                        //       5.0,
                        //     ),
                        //     blurRadius: 10.0,
                        //     spreadRadius: 2.0,
                        //   ), //BoxShadow
                        //   BoxShadow(
                        //     color: Colors.white,
                        //     offset: const Offset(0.0, 0.0),
                        //     blurRadius: 0.0,
                        //     spreadRadius: 0.0,
                        //   ), //BoxShadow
                        // ],
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                            child: Text(
                              'Usuarios ruta Garza Sada',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/images/graph5.jpeg"),
                            height: 300,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white

                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey,
                        //     offset: const Offset(
                        //       5.0,
                        //       5.0,
                        //     ),
                        //     blurRadius: 10.0,
                        //     spreadRadius: 2.0,
                        //   ), //BoxShadow
                        //   BoxShadow(
                        //     color: Colors.white,
                        //     offset: const Offset(0.0, 0.0),
                        //     blurRadius: 0.0,
                        //     spreadRadius: 0.0,
                        //   ), //BoxShadow
                        // ],
                        ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                            child: Text(
                              'Usuarios ruta Valle alto',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/images/graph4.jpeg"),
                            height: 300,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
