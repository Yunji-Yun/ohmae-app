import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    if (WebView.platform == null) {
      WebView.platform = SurfaceAndroidWebView(); // Android 설정
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://google.com',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
