import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/src/pages/normal/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const SecondPage());
              },
              child: const Text('다음 페이지 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
