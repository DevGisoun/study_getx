import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/src/controller/count_controller_with_getx_reactive.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetxReactive());
    return Scaffold(
      appBar: AppBar(
        title: const Text('반응형 상태 관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'GetX',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Obx(
              () => Text(
                '${Get.find<CountControllerWithGetxReactive>().count.value}',
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithGetxReactive>().increase();
              },
              child: const Text(
                '+',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithGetxReactive>().putNumber(5);
              },
              child: const Text(
                '5로 변경',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
