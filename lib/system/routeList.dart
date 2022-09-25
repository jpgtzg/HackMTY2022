import 'dart:ffi';

import 'package:flutter/material.dart';

class RouteModel {
  String routeName;
  List<String> routes = [];
  List<String> routeTimes = [];
  Color colorCode;

  RouteModel(this.routeName, this.routes, this.routeTimes, this.colorCode);

  static List<RouteModel> routesList = [
    RouteModel(
      "Garza Sada",
      [],
      [],
      Color(0xff0d0057),
    ),
    RouteModel(
      "Revolución",
      [],
      [],
      Color(0xfffd8204),
    ),
    RouteModel(
      "Hosp. & Esc.",
      [],
      [],
      Color(0xffea0a2a),
    ),
    RouteModel(
      "Valle Alto",
      [],
      [],
      Color(0xff800d07),
    ),
  ];
}
