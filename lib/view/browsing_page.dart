import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:browser/controller/browser_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homePage.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void updateLoading(bool ls) {
    this.setState(() {
      showLoading = true;
    });
  }

  @override
  void initState() {
    super.initState();
    FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();
    flutterWebviewPlugin.onStateChanged
        .listen((WebViewStateChanged webViewStateChanged) {
      print(webViewStateChanged.type);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.search,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Container(
          child: TextField(
            autofocus: false,
            controller: controller,
            cursorColor: Colors.white,
            cursorWidth: 0.5,
            textInputAction: TextInputAction.go,
            onSubmitted: (url) {
              launchUrl();
            },
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Colors.white,
                letterSpacing: .5,
              ),
            ),
            decoration: InputDecoration(
                hintText: "Search Here",
                hintStyle: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                launchUrl();
              }),
          new IconButton(
            color: Colors.white,
            icon: Icon(Icons.autorenew),
            onPressed: () {
              flutterWebviewPlugin.reload();
            },
          ),
          new IconButton(
              color: Colors.white,
              onPressed: () {
                // Get.to(homePage());
                Get.off(() => homePage());
              },
              icon: Icon(Icons.home)),
        ],
      ),
      url: UrlString,
      withZoom: true,
    );
  }
}
