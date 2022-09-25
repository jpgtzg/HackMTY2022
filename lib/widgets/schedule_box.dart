import 'package:flutter/material.dart';
import '../system/constants.dart';

class ScheduleBox extends StatelessWidget {
  final String time;
  final String location;
  final VoidCallback pressSelect;

  const ScheduleBox({
    Key? key,
    required this.time,
    required this.location,
    required this.pressSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/icons/clock.png', width: 15),
                    SizedBox(width: 15),
                    Flexible(
                      child: Text(
                        time,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    
                  ],
                ),
                SizedBox(height: 13),
                Row(
                  children: [
                    Image.asset('assets/icons/location.png', width: 15),
                    SizedBox(width: 15),
                    Flexible(
                      child: Text(
                        location,
                        overflow : TextOverflow.visible,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 13),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 3),
                        height: 1.0,
                        color: kDarkGray,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
