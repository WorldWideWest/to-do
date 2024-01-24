class ToDo {
  final String title;
  final String description;
  final bool isCompleted;
  final DateTime date;

  ToDo(
      {required this.title,
      required this.description,
      this.isCompleted = false,
      required this.date});
}
