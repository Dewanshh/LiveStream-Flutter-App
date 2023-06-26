import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color color = Colors.white;

class price extends GetxController {
  RxString bit_price = "0".obs;
  RxString eth_price = "0".obs;

  void bit_change(String s) {
    color = double.parse(s) < double.parse(bit_price.value)
        ? Colors.red
        : Colors.green;
    bit_price.value = s;
  }

  void eth_change(String s) {
    eth_price.value = s;
  }
}
