import 'package:mobx/mobx.dart';

part 'todo_object_controller.g.dart';

class TodoObjectController = _TodoObjectController with _$TodoObjectController;

abstract class _TodoObjectController with Store {
  _TodoObjectController(this.description);

  @observable
  String description = '';

  @observable
  bool done = false;
}
