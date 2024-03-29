import 'dart:convert';

class Todo {
  Todo(
      {this.id,
      required this.title,
      required this.description,
      required this.isCompleted,
      required this.author});
  String? id;
  final String title;
  final String description;
  final bool isCompleted;
  final String author;

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'author': author,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      isCompleted: map['isCompleted'] ?? '',
      author: map['author'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) => Todo.fromMap(json.decode(source));
}
