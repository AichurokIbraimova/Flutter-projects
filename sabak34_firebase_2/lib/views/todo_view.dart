// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak34_firebase_2/model.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  bool isCompleted = false;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  /////////////////////////////////////
  Future<void> addTodo() async {
    final db = FirebaseFirestore.instance;
    final todos = Todo(
        title: _titleController.text,
        description: _descriptionController.text,
        isCompleted: isCompleted,
        author: _authorController.text);
    await db.collection('todos').add(todos.toMap());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TodoView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 15,
          right: 10,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Write title';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: 'Title',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _descriptionController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Write description';
                  }
                  return null;
                },
                maxLines: 8,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: 'Descripton',
                ),
              ),
              CheckboxListTile(
                  value: isCompleted,
                  onChanged: (v) {
                    setState(() {
                      isCompleted = v!;
                    });
                  }),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _authorController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Write author';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: 'Author',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            backgroundColor: Colors.white.withOpacity(0.5),
                            title: const Text(
                              'Сиздин маалыматыныз жонотулуудо',
                            ),
                            children: [
                              CupertinoActivityIndicator(
                                radius: 20,
                                color: Colors.blue.withOpacity(0.5),
                              ),
                            ],
                          );
                        });
                    await addTodo();

                    Navigator.popUntil(context, (route) => route.isFirst);
                  } else {
                    null;
                  }
                },
                icon: const Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ),
                label: const Text(
                  'Отправить',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
