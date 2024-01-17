import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_with_restapi/screens/add_page.dart';
import 'package:http/http.dart' as http;

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  @override
  void initState() {
    fetchTodo();
    super.initState();
  }

  void navigatToAddPage() {
    final route = MaterialPageRoute(builder: (context) => const AddPage());
    Navigator.push(context, route);
  }

  Future<void> fetchTodo() async {
    final url = 'https://api.nstack.in/v1/todos?page=1&limit=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To do's"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          navigatToAddPage();
        },
        label: const Text('Add Tasks'),
      ),
    );
  }
}
