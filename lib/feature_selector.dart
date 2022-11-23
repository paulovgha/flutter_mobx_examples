import 'package:flutter/material.dart';
import 'features/counter/counter_page.dart';
import 'features/todo_list/todo_list_page.dart';

class FeatureSelector extends StatelessWidget {
  const FeatureSelector({super.key});

  static const featureSelector = '/feature_selector_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature Selector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(CounterPage.counterPage),
              child: const Text('Counter'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(TodoListPage.todoListPage),
              child: const Text('To Do List'),
            ),
          ],
        ),
      ),
    );
  }
}
