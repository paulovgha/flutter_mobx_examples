import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_implementation/features/todo_list/todo_list_controller.dart';
import 'package:provider/provider.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoListController>(context);

    return Observer(
      builder: (_) => Flexible(
        child: ListView.builder(
            itemCount: list.visibleTodos.length,
            itemBuilder: (_, index) {
              final todoObjectController = list.visibleTodos[index];
              return Observer(
                builder: (_) => CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: todoObjectController.done,
                  onChanged: (flag) => todoObjectController.done = flag!,
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(todoObjectController.description,
                            overflow: TextOverflow.ellipsis),
                      ),
                      IconButton(
                        onPressed: () => list.removeTodo(todoObjectController),
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
