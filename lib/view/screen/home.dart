import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/app_controller.dart';

import '../calculation/decrease.dart';
import '../calculation/division.dart';
import '../calculation/multiplication.dart';
import '../calculation/sum.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getController_app = Get.put(MyController());

    return Scaffold(
        appBar: AppBar(
          title:
              const Text('Calculator', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30.px, vertical: 20.px),
                child: Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Input 1'),
                      keyboardType: TextInputType.number,
                      controller: getController_app.inputOneController,
                    ),
                    const SizedBox(height: 4.0),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Input 2'),
                      keyboardType: TextInputType.number,
                      controller: getController_app.inputTwoController,
                    ),
                  ],
                )),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 50.px),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                            onPressed: () {
                              if (getController_app
                                      .inputOneController.text.isNotEmpty &&
                                  getController_app
                                      .inputTwoController.text.isNotEmpty) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SumPage()));
                              }else{
                                Get.snackbar(
                                    'เเจ้งเตือน', 'กลอกข้อมูลให้ครอบถ้วน',
                                    snackPosition: SnackPosition.BOTTOM);
                              }
                            },
                            icon: const Icon(Icons.exposure),
                            label: const Text('+')),
                        const SizedBox(width: 30),
                        ElevatedButton.icon(
                            onPressed: () {
                              if (getController_app
                                      .inputOneController.text.isNotEmpty &&
                                  getController_app
                                      .inputTwoController.text.isNotEmpty) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DecreasePage()));
                              }else{
                                Get.snackbar(
                                    'เเจ้งเตือน', 'กลอกข้อมูลให้ครอบถ้วน',
                                    snackPosition: SnackPosition.BOTTOM);
                              }
                      
                            },
                            icon: const Icon(Icons.exposure),
                            label: const Text('-')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                            onPressed: () {
                              if (getController_app
                                      .inputOneController.text.isNotEmpty &&
                                  getController_app
                                      .inputTwoController.text.isNotEmpty) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        MultiplicationPage()));
                              } else {
                                Get.snackbar(
                                    'เเจ้งเตือน', 'กลอกข้อมูลให้ครอบถ้วน',
                                    snackPosition: SnackPosition.BOTTOM);
                              }
                            },
                            icon: const Icon(Icons.exposure),
                            label: const Text('*')),
                        const SizedBox(width: 30),
                        ElevatedButton.icon(
                            onPressed: () {
                              if (getController_app
                                      .inputOneController.text.isNotEmpty &&
                                  getController_app
                                      .inputTwoController.text.isNotEmpty) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DivisionPage()));
                              }
                            },
                            icon: const Icon(Icons.exposure),
                            label: const Text('/'))
                      ],
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        getController_app.removedata();
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      label: const Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
