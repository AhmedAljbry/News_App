import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebviewScrenn extends StatelessWidget {
 late String url;
 WebviewScrenn(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     body: WebView(
       initialUrl:url,
     ),
    );
  }
}
