import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:study_getx/src/controller/count_controller_with_getx.dart';
import 'package:study_getx/src/controller/count_controller_with_provider.dart';
import 'package:study_getx/src/pages/state/with_getx.dart';
import 'package:study_getx/src/pages/state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // case 1. GetX (Load Controller)
    Get.put(CountControllerWithGetX());
    return Scaffold(
      appBar: AppBar(
        title: const Text('단순 상태 관리'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              // case 1. GetX (Load Controller)
              child: WithGetX(),
            ),
            Expanded(
              // case 1. Legacy (Load Controller)
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: const WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
