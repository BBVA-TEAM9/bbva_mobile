
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }

  void closeDrawer() {
    Get.back();
  }
}