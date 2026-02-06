enum TaskStatus { pending, inProgress, completed }

class Task {
  String title;
  String description;
  TaskStatus status;

  Task(this.title, this.description, {this.status = TaskStatus.pending});

  void display() {
    print("Title: $title | Description: $description | Status: $status");
  }
}
