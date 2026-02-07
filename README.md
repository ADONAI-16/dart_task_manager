# Dart Task Manager 📝

A clean, professional Dart CLI application to manage tasks efficiently.  
Designed with modular code, OOP principles, async programming, and custom exception handling.

---

## 🚀 Features

- Add tasks with title and description  
- List all tasks with current status  
- Update task status (`pending`, `inProgress`, `completed`)  
- Input validation using custom exceptions  
- Simulates delays using `async` / `await`  
- Clean & modular project structure  

---

## Project Structure

```text
lib/
├── main.dart
├── models/
│   └── task.dart
├── services/
│   └── task_service.dart
└── utils/
    └── exceptions.dart

.gitignore
pubspec.yaml
README.md
```

## ▶️ How to Run
```text
## 1️⃣ Clone the repository
git clone https://github.com/ADONAI-16/dart_task_manager.git
cd dart_task_manager

## 2️⃣ Install dependencies
dart pub get

## 3️⃣ Run the app
dart run lib/main.dart

```

## 🧪 Example Usage
```text
--- Task Manager ---
1. Add Task
2. List Tasks
3. Update Status
4. Exit

Choose an option: 1
Enter title: Homework
Enter description: Math exercises
Task added successfully ✅

Choose an option: 2
Title: Homework | Description: Math exercises | Status: TaskStatus.pending
```

## 🧠 Concepts & Tech Used

. Dart fundamentals (variables, functions, classes, enums)

. Object-Oriented Programming (OOP)

. Async programming with Future and await

. Custom exception handling

. Clean, modular project structure

## 🎷 Fun Fact

⚡ I code better when listening to jazz music

