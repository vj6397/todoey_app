class Task {
  String name;
  bool isDone;
  Task({this.name = 'buy milk', this.isDone = false});

  void toggle() {
    isDone = !isDone;
  }
}
