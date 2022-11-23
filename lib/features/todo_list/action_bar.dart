import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_implementation/features/todo_list/todo_list_controller.dart';
import 'package:provider/provider.dart';

class ActionBar extends StatelessWidget {
  const ActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoListController>(context);

    return Column(
      children: [
        Observer(
          builder: (_) => Column(
            children: [
              RadioListTile(
                  dense: true,
                  title: const Text('All'),
                  value: VisibilityFilter.all,
                  groupValue: list.filter,
                  onChanged: (filter) => list.filter = filter!),
              RadioListTile(
                  dense: true,
                  title: const Text('Pending'),
                  value: VisibilityFilter.pending,
                  groupValue: list.filter,
                  onChanged: (filter) => list.filter = filter!),
              RadioListTile(
                  dense: true,
                  title: const Text('Completed'),
                  value: VisibilityFilter.completed,
                  groupValue: list.filter,
                  onChanged: (filter) => list.filter = filter!),
            ],
          ),
        ),
        Observer(
          builder: (_) => ButtonBar(
            children: [
              ElevatedButton(
                onPressed:
                    list.canRemoveAllCompleted ? list.removeCompleted : null,
                child: const Text('Remove completed'),
              ),
              ElevatedButton(
                onPressed:
                    list.canMarkAllCompleted ? list.markAllAsCompleted : null,
                child: const Text('Mark All Completed'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
