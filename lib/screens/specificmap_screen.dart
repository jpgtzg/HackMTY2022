import 'package:flutter/material.dart';
import 'package:public_transport_app/system/routeList.dart';
import 'package:public_transport_app/widgets/topbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SpecMapScreen extends StatelessWidget {
  final String mapURL;
  const SpecMapScreen({required this.mapURL});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          WebView(
            initialUrl: mapURL,
            javascriptMode: JavascriptMode.unrestricted,
          ),
          Padding(
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
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Back",
                  style: TextStyle(
                      fontFamily: "Manrope", fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
