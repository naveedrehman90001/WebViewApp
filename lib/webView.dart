import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MyWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20),
        color: Colors.black,
        child: WebviewScaffold(
          url: 'https://kensainternational.com/',
          withZoom: true,
          appCacheEnabled: true,
          withLocalStorage: true,
          hidden: true,
        ),
      ),
    );
  }
}
