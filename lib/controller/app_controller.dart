import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  final inputOneController = TextEditingController();
  final inputTwoController = TextEditingController();

  RxString inPutOne = ''.obs;
  RxString inPutTwo = ''.obs;

  testvalue() {
    print('value 1 = ${inputOneController.text}');
    print('value 2 = ${inputTwoController.text}');
  }

  double plusNumber() {
    dynamic sum = double.parse(inputOneController.text) +
        double.parse(inputTwoController.text);
    return sum;
  }

  double decreaseNumber() {
    dynamic decrease = double.parse(inputOneController.text) -
        double.parse(inputTwoController.text);
    return decrease;
  }

  double multiplicationNumber() {
    dynamic multiplication = double.parse(inputOneController.text) *
        double.parse(inputTwoController.text);
    return multiplication;
  }

  double divisionNumber() {
    dynamic division = (double.parse(inputOneController.text) /
        double.parse(inputOneController.text));
    return division;
  }

  void removedata() {
    inputOneController.text = '';
    inputTwoController.text = '';
  }
}
