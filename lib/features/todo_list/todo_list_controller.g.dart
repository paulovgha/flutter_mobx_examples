// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoListController on _TodoListController, Store {
  Computed<ObservableList<TodoObjectController>>? _$pendingTodosComputed;

  @override
  ObservableList<TodoObjectController> get pendingTodos =>
      (_$pendingTodosComputed ??=
              Computed<ObservableList<TodoObjectController>>(
                  () => super.pendingTodos,
                  name: '_TodoListController.pendingTodos'))
          .value;
  Computed<ObservableList<TodoObjectController>>? _$completedTodosComputed;

  @override
  ObservableList<TodoObjectController> get completedTodos =>
      (_$completedTodosComputed ??=
              Computed<ObservableList<TodoObjectController>>(
                  () => super.completedTodos,
                  name: '_TodoListController.completedTodos'))
          .value;
  Computed<bool>? _$hasCompletedTodosComputed;

  @override
  bool get hasCompletedTodos => (_$hasCompletedTodosComputed ??= Computed<bool>(
          () => super.hasCompletedTodos,
          name: '_TodoListController.hasCompletedTodos'))
      .value;
  Computed<bool>? _$hasPendingTodosComputed;

  @override
  bool get hasPendingTodos =>
      (_$hasPendingTodosComputed ??= Computed<bool>(() => super.hasPendingTodos,
              name: '_TodoListController.hasPendingTodos'))
          .value;
  Computed<String>? _$itemsDescriptionComputed;

  @override
  String get itemsDescription => (_$itemsDescriptionComputed ??=
          Computed<String>(() => super.itemsDescription,
              name: '_TodoListController.itemsDescription'))
      .value;
  Computed<ObservableList<TodoObjectController>>? _$visibleTodosComputed;

  @override
  ObservableList<TodoObjectController> get visibleTodos =>
      (_$visibleTodosComputed ??=
              Computed<ObservableList<TodoObjectController>>(
                  () => super.visibleTodos,
                  name: '_TodoListController.visibleTodos'))
          .value;
  Computed<bool>? _$canRemoveAllCompletedComputed;

  @override
  bool get canRemoveAllCompleted => (_$canRemoveAllCompletedComputed ??=
          Computed<bool>(() => super.canRemoveAllCompleted,
              name: '_TodoListController.canRemoveAllCompleted'))
      .value;
  Computed<bool>? _$canMarkAllCompletedComputed;

  @override
  bool get canMarkAllCompleted => (_$canMarkAllCompletedComputed ??=
          Computed<bool>(() => super.canMarkAllCompleted,
              name: '_TodoListController.canMarkAllCompleted'))
      .value;

  late final _$todoListControllerAtom =
      Atom(name: '_TodoListController.todoListController', context: context);

  @override
  ObservableList<TodoObjectController> get todoListController {
    _$todoListControllerAtom.reportRead();
    return super.todoListController;
  }

  @override
  set todoListController(ObservableList<TodoObjectController> value) {
    _$todoListControllerAtom.reportWrite(value, super.todoListController, () {
      super.todoListController = value;
    });
  }

  late final _$filterAtom =
      Atom(name: '_TodoListController.filter', context: context);

  @override
  VisibilityFilter get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(VisibilityFilter value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  late final _$_TodoListControllerActionController =
      ActionController(name: '_TodoListController', context: context);

  @override
  void addTodo(String description) {
    final _$actionInfo = _$_TodoListControllerActionController.startAction(
        name: '_TodoListController.addTodo');
    try {
      return super.addTodo(description);
    } finally {
      _$_TodoListControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTodo(TodoObjectController todoObjectController) {
    final _$actionInfo = _$_TodoListControllerActionController.startAction(
        name: '_TodoListController.removeTodo');
    try {
      return super.removeTodo(todoObjectController);
    } finally {
      _$_TodoListControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFilter(VisibilityFilter filter) {
    final _$actionInfo = _$_TodoListControllerActionController.startAction(
        name: '_TodoListController.changeFilter');
    try {
      return super.changeFilter(filter);
    } finally {
      _$_TodoListControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCompleted() {
    final _$actionInfo = _$_TodoListControllerActionController.startAction(
        name: '_TodoListController.removeCompleted');
    try {
      return super.removeCompleted();
    } finally {
      _$_TodoListControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void markAllAsCompleted() {
    final _$actionInfo = _$_TodoListControllerActionController.startAction(
        name: '_TodoListController.markAllAsCompleted');
    try {
      return super.markAllAsCompleted();
    } finally {
      _$_TodoListControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todoListController: ${todoListController},
filter: ${filter},
pendingTodos: ${pendingTodos},
completedTodos: ${completedTodos},
hasCompletedTodos: ${hasCompletedTodos},
hasPendingTodos: ${hasPendingTodos},
itemsDescription: ${itemsDescription},
visibleTodos: ${visibleTodos},
canRemoveAllCompleted: ${canRemoveAllCompleted},
canMarkAllCompleted: ${canMarkAllCompleted}
    ''';
  }
}
