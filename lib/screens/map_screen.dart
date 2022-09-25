import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl:
            "https://www.google.com/maps/d/viewer?mid=1jcixiPS82gTsW1a7_SEBmJvH6o24c54&ll=25.633107566858154%2C-100.29017696335583&z=12",
        javascriptMode: JavascriptMode.unrestricted,
        
      ),
    );
  }
}
