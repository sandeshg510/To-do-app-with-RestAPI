import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_with_restapi/screens/add_page.dart';

class ToDoListPage extends StatelessWidget {
  const ToDoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To do's"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddPage()));
        },
        label: const Text('Add Tasks'),
      ),
    );
  }
}
