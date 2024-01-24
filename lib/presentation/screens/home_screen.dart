import 'package:flutter/material.dart';
import 'package:to_do/domain/usecases/get_todo_items_usecase.dart';
import 'package:to_do/presentation/widgets/app_bar_widget.dart';
import 'package:to_do/presentation/widgets/todo_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Center(
        child: Column(
          children: items.map((e) => TodoWidget(item: e)).toList(),
        ),
      ),
    );
  }
}
