import 'package:get/get.dart';

enum NUM {
  FIRST,
  SECOND,
}

class User {
  String? name;
  int? age;

  User({
    this.name,
    this.age,
  });
}

class CountControllerWithGetxReactive extends GetxController {
  RxInt count = 0.obs;

  /// enum
  Rx<NUM> nums = NUM.FIRST.obs;

  /// class
  Rx<User> user = User(
    name: 'Gisoun',
    age: 26,
  ).obs;

  /// List
  RxList<String> list = [
    'Apple',
  ].obs;

  void increase() {
    count++;

    /// enum
    nums(NUM.SECOND);

    /// class
    user(User());
    user.update((_user) {
      _user?.name = 'DevGisoun';
      _user?.age = 20;
    });

    /// List
    // list.addAll();
    list.add('banana');
    list.addIf(user.value.name == 'DevGisoun', 'OK !');
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    ever(count, (_) => print('매번 호출'));
    once(count, (_) => print('한 번만 호출'));
    debounce(
      count,
      (_) => print('마지막 변경에 한 번만 호출'),
      time: const Duration(seconds: 1),
    );
    interval(
      count,
      (_) => print('변경되고 있는 동안 1초마다 호출'),
      time: Duration(seconds: 1),
    );
    super.onInit();
  }
}
