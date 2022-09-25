import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 10.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Image(
              height: 30,
              width: 30,
              image: AssetImage("assets/images/back.png"),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "Back",
            style: TextStyle(
                fontFamily: "Manrope", fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
