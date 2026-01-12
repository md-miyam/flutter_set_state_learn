// Problem: একটি লিস্ট বানাও, উপরে সার্চ দিলে লিস্ট ফিল্টার হবে।
import 'package:flutter/material.dart';
class SearchFilterDemo extends StatelessWidget {
  const SearchFilterDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Filter")),
      body: Column(
        children: [
          TextField(decoration: InputDecoration(labelText: "Search")),
          Expanded(
            child: ListView(
              children: [
                ListTile(title: Text("Apple")),
                ListTile(title: Text("Banana")),
                ListTile(title: Text("Orange")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
