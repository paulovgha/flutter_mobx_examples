import 'package:mobx/mobx.dart';
import 'package:mobx_implementation/features/todo_list/todo_object_controller.dart';

part 'todo_list_controller.g.dart';

enum VisibilityFilter { all, pending, completed }

class TodoListController = _TodoListController with _$TodoListController;

abstract class _TodoListController with Store {
  @observable
  ObservableList<TodoObjectController> todoListController =
      ObservableList<TodoObjectController>();

  @observable
  VisibilityFilter filter = VisibilityFilter.all;

  @computed
  ObservableList<TodoObjectController> get pendingTodos =>
      ObservableList.of(todoListController
          .where((todoObjectController) => todoObjectController.done != true));

  @computed
  ObservableList<TodoObjectController> get completedTodos =>
      ObservableList.of(todoListController
          .where((todoObjectController) => todoObjectController.done == true));

  @computed
  bool get hasCompletedTodos => completedTodos.isNotEmpty;

  @computed
  bool get hasPendingTodos => pendingTodos.isNotEmpty;

  @computed
  String get itemsDescription {
    if (todoListController.isEmpty) {
      return "Empty To Do List.";
    }

    final suffix = pendingTodos.length == 1 ? 'todo' : 'todos';
    return '${pendingTodos.length} pending $suffix, ${completedTodos.length} completed';
  }

  @computed
  ObservableList<TodoObjectController> get visibleTodos {
    switch (filter) {
      case VisibilityFilter.pending:
        return pendingTodos;
      case VisibilityFilter.completed:
        return completedTodos;
      default:
        return todoListController;
    }
  }

  @computed
  bool get canRemoveAllCompleted =>
      hasCompletedTodos && filter != VisibilityFilter.pending;

  @computed
  bool get canMarkAllCompleted =>
      hasPendingTodos && filter != VisibilityFilter.completed;

  @action
  void addTodo(String description) {
    final todoObjectController = TodoObjectController(description);
    todoListController.add(todoObjectController);
  }

  @action
  void removeTodo(TodoObjectController todoObjectController) {
    todoListController.removeWhere((x) => x == todoObjectController);
  }

  @action
  void changeFilter(VisibilityFilter filter) => this.filter = filter;

  @action
  void removeCompleted() {
    todoListController
        .removeWhere((todoObjectController) => todoObjectController.done);
  }

  @action
  void markAllAsCompleted() {
    for (final todoObjectController in todoListController) {
      todoObjectController.done = true;
    }
  }
}
