import 'package:flutter/material.dart';
import 'package:to_do/domain/entities/todo.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key, required this.item});

  final ToDo item;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
            color: Colors.white,
            margin: const EdgeInsets.all(10),
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    title: Text(
                      item.title,
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.bold,
                          decoration: item.isCompleted
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          decorationColor: Colors.grey.shade700),
                    ),
                    subtitle: Text(
                      item.description,
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                ],
              ),
            )));
  }
}
