import 'package:mobx/mobx.dart';

part 'counter_controller.g.dart';

class CounterController = _CounterController with _$CounterController;

abstract class _CounterController with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
  @action
  void decrement() {
    value--;
  }
}