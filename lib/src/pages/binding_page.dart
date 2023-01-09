import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/src/controller/count_controller_with_getx.dart';

class BindingPage extends GetView<CountControllerWithGetX> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(
            () => Text(
              controller.count.toString(),
              style: const TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              controller.increase();
            },
            child: const Text(''),
          ),
        ],
      ),
    );
  }
}
