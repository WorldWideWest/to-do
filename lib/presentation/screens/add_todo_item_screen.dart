import 'package:flutter/material.dart';

class AddToDoItemScreen extends StatelessWidget {
  const AddToDoItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: const Column(
      children: [
        TextField(
          decoration: InputDecoration(hintText: 'Title'),
        )
      ],
    ));
  }
}
