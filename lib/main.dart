import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/src/binding/page_binding.dart';
import 'package:study_getx/src/controller/count_controller_with_getx.dart';
import 'package:study_getx/src/controller/dependency_controller.dart';
import 'package:study_getx/src/home.dart';
import 'package:study_getx/src/pages/binding_page.dart';
import 'package:study_getx/src/pages/named/first_named_page.dart';
import 'package:study_getx/src/pages/named/second_named_page.dart';
import 'package:study_getx/src/pages/next_page.dart';
import 'package:study_getx/src/pages/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      // // case 1. Legacy
      // routes: {
      //   '/': (context) => const Home(),
      //   '/first': (context) => const FirstNamedPage(),
      //   '/second': (context) => const SecondNamedPage(),
      // },

      // case 2. GetX
      getPages: [
        GetPage(
          name: '/',
          page: () => const Home(),

          /// 페이지 이동 시 나타나는 애니메이션
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/first',
          page: () => const FirstNamedPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/second',
          page: () => const SecondNamedPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/next',
          page: () => const NextPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/user/:uid',
          page: () => const UserPage(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/binding',
          page: () => const BindingPage(),
          binding: PageBinding(),
        ),
      ],
    );
  }
}
