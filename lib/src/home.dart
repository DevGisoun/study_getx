import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/src/pages/normal/first_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '라우트 관리 홈',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// 페이지 이동
            ElevatedButton(
              onPressed: () {
                // // case 1. Legacy
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (_) => const FirstPage(),
                // ));

                // case 2. GetX
                Get.to(const FirstPage());
              },
              child: const Text('일반적인 라우트'),
            ),

            /// 페이지 이동
            ElevatedButton(
              onPressed: () {
                // // case 1. Legacy
                // Navigator.of(context).pushNamed('/first');

                // case 2. GetX
                Get.toNamed('/first');
              },
              child: const Text('Named 라우트'),
            ),

            /// 페이지 이동 시 Argument 전달
            ///
            /// (to, toNamed 전부 가능)
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/next',
                  arguments: User(
                    name: 'DevGisoun',
                    age: 26,
                  ),
                );
              },
              child: const Text('Argument 전달'),
            ),

            /// 동적 URL 적용
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/user/2151?name=기순&age=26',
                );
              },
              child: const Text('동적 URL'),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({
    required this.name,
    required this.age,
  });
}
