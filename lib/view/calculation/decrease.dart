import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/app_controller.dart';

class DecreasePage extends StatelessWidget {
   DecreasePage({super.key});

  final getController_app = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decrease', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ผลลัพธ์',style: TextStyle(
              fontSize: 50.px
            ),),
            const SizedBox(width: 20),
            Text(getController_app.decreaseNumber().toString(),style: TextStyle(
              fontSize: 70.px
            ),)
          ],
        ),
      ),
    );
  }
}