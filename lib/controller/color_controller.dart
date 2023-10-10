import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController{
  Rx<Color> color = Colors.green.obs;

  void changeColor(Duration duration) {
    color.value = Colors.red;

    Future.delayed(duration, () {
      color.value = Colors.green; // Revert to the original color
    });
  }

}