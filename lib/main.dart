

import 'package:browser/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(
      GetMaterialApp(
    home: homePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),


  ));
}
