import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mobx_implementation/features/todo_list/todo_list_controller.dart';

import 'action_bar.dart';
import 'add_todo.dart';
import 'description.dart';
import 'todo_list_view.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  static const todoListPage = '/todo_list_page';

  @override
  Widget build(BuildContext context) {
    return Provider<TodoListController>(
      create: (_) => TodoListController(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MobX To Do List'),
        ),
        body: Column(children: [
          AddTodo(),
          const ActionBar(),
          const Description(),
          const TodoListView()
        ]),
      ),
    );
  }
}
