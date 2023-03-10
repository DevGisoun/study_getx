import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Named Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /// 라우트를 호출한 페이지를 History에서 제거 후
                /// 페이지 이동
                Get.offNamed('/second');
              },
              child: const Text('다음 페이지 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
