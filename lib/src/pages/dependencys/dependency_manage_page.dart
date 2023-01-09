import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/src/controller/dependency_controller.dart';

import 'get_lazyput.dart';
import 'get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '종속성 주입',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.put(DependencyController());
                  }),
                );
              },
              child: const Text('Getput'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  const GetLazyput(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                        () => DependencyController());
                  }),
                );
              },
              child: Text('Get.lazyPut'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(
                        const Duration(
                          seconds: 5,
                        ),
                      );
                      return DependencyController();
                    });
                  }),
                );
              },
              child: Text('Get.putAsync'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  const GetPut(),
                  binding: BindingsBuilder(() {
                    Get.create<DependencyController>(
                      () => DependencyController(),
                    );
                  }),
                );
              },
              child: Text('Get.create'),
            ),
          ],
        ),
      ),
    );
  }
}
