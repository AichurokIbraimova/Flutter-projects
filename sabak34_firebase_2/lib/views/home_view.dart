import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sabak34_firebase_2/model.dart';
import 'package:sabak34_firebase_2/views/todo_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Stream<QuerySnapshot> readTodo() {
    final db = FirebaseFirestore.instance;
    return db.collection('todos').snapshots();
  }

  Future<void> updateTodo(Todo todo) async {
    final db = FirebaseFirestore.instance;
    await db
        .collection('todos')
        .doc(todo.id)
        .update({'isCompleted': !todo.isCompleted});
  }

  Future<void> deleteTodo(Todo todo) async {
    final db = FirebaseFirestore.instance;
    await db.collection('todos').doc(todo.id).delete();
  }

  @override
  void initState() {
    readTodo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: StreamBuilder(
        stream: readTodo(),
        builder: (contex, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CupertinoActivityIndicator(
              radius: 25,
            ));
          } else if (snapShot.hasError) {
            return Text(snapShot.error.toString());
          } else if (snapShot.hasData) {
            final List<Todo> todos = snapShot.data!.docs
                .map((e) =>
                    Todo.fromMap(e.data() as Map<String, dynamic>)..id = e.id)
                .toList();
            return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  final todo = todos[index];
                  return Card(
                    child: ListTile(
                        leading: Text(todo.title),
                        title: Text(todo.description),
                        subtitle: Text(todo.author),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              value: todo.isCompleted,
                              onChanged: (v) {
                                updateTodo(todo);
                              },
                            ),
                            IconButton(
                                onPressed: () async {
                                  await deleteTodo(todo);
                                },
                                icon: const Icon(Icons.delete))
                          ],
                        )),
                  );
                });
          } else {
            return const Text('Белгисиз ката бар');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TodoView(),
              ),
            );
          }),
    );
  }
}
