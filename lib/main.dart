import 'package:flutter/material.dart';
import 'feature_selector.dart';
import 'features/counter/counter_page.dart';
import 'features/todo_list/todo_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobX Implementation',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const FeatureSelector(),
      routes: {
        FeatureSelector.featureSelector:(context) => const FeatureSelector(),
        CounterPage.counterPage:(context) => const CounterPage(),
        TodoListPage.todoListPage:(context) => const TodoListPage(),
      },
    );
  }
}
