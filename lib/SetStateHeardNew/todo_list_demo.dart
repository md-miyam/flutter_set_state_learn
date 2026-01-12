// Problem: একটি টুডু লিস্ট বানাও যেখানে নতুন টাস্ক যোগ করা যাবে এবং সম্পন্ন হলে কেটে যাবে।
import 'package:flutter/material.dart';

class TodoListDemo extends StatelessWidget {
  const TodoListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo List")),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text("Task 1"),
                  trailing: Checkbox(value: false, onChanged: (val) {}),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Add Task",
                suffixIcon: IconButton(icon: Icon(Icons.add), onPressed: () {}),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
