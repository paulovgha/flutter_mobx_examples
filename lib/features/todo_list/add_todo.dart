import 'package:flutter/material.dart';
import 'package:mobx_implementation/features/todo_list/todo_list_controller.dart';
import 'package:provider/provider.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key});

  final _textController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoListController>(context);

    return TextField(
      autofocus: true,
      decoration: const InputDecoration(
          labelText: 'Add a Todo', contentPadding: EdgeInsets.all(8)),
      controller: _textController,
      textInputAction: TextInputAction.done,
      onSubmitted: (String value) {
        list.addTodo(value);
        _textController.clear();
      },
    );
  }
}
