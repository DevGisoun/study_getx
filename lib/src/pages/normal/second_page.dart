import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// 뒤로 가기
            ElevatedButton(
              onPressed: () {
                // // case 1. Legacy
                // Navigator.of(context).pop();

                // case 2. GetX
                Get.back();
              },
              child: const Text('뒤로 이동'),
            ),

            /// 페이지 이동 후 History 삭제
            ElevatedButton(
              onPressed: () {
                // // case 1. Legacy
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(builder: (_) => const Home()),
                //   (route) => false,
                // );

                // case 2. GetX
                Get.offAll(const Home());
              },
              child: const Text('홈 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
