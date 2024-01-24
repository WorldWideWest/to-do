import 'package:to_do/domain/entities/todo.dart';

class GetToDoItemsUseCase {
  List<ToDo> getToDoItemsUseCase() => items;
}

List<ToDo> items = [
  ToDo(
      title: "Working Out",
      description: "At the All4Sports Gym",
      date: DateTime(2024, 1, 25),
      isCompleted: true),
  ToDo(
      title: "Fixing issue with deployments in RF",
      description:
          "Fixing Proxy blocking nuget packages to be installed with Docker build",
      date: DateTime(2024, 1, 25)),
  ToDo(
      title: "Going home and cooking pasta",
      description: "Cooking pasta that Dino made for us",
      date: DateTime(2024, 1, 25))
];
