import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sabak34_firebase_2/views/home_view.dart';

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
  Future<void> readData() async {
    final db = FirebaseFirestore.instance;
    await db.collection("todos").get().then((event) {
      for (var doc in event.docs) {
        print("${doc.id} => ${doc.data()}");
      }
    });
  }

  @override
  void initState() {
    readData();

    super.initState();
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
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => const HomeView(),
                      ),
                    );
                  } else {
                    null;
                  }
                },
                icon: const Icon(Icons.arrow_upward, color: Colors.white),
                label: const Text(
                  'Отправить',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
