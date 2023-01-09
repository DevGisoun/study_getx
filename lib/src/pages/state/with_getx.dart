import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_getx/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);

  final CountControllerWithGetX _controllerWithGetX =
      Get.put(CountControllerWithGetX());

  Widget _button(String id) {
    return ElevatedButton(
      onPressed: () {
        // // 상단에서 controller를 불러오지 않은 경우
        // Get.find<CountControllerWithGetX>().increase();

        // 상단에서 controller를 불러온 경우
        // _controllerWithGetX.increase(id);

        _controllerWithGetX.increase();
      },
      child: const Text(
        '+',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'GetX',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          GetBuilder<CountControllerWithGetX>(
            id: 'first',
            builder: (controller) {
              return Text(
                '${controller.count}',
                style: const TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          GetBuilder<CountControllerWithGetX>(
            id: 'second',
            builder: (controller) {
              return Text(
                '${controller.count}',
                style: const TextStyle(
                  fontSize: 50,
                ),
              );
            },
          ),
          // GetX 사용 시 Widget을 별도의 Function으로 관리하는 것이 가능 !
          _button('first'),
          _button('second'),
        ],
      ),
    );
  }
}
