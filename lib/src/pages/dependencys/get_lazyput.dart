import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/src/controller/dependency_controller.dart';

class GetLazyput extends StatelessWidget {
  const GetLazyput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          Get.find<DependencyController>().increase();
        },
        child: Text('Init'),
      ),
    );
  }
}
