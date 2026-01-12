// Problem: বিভিন্ন category ট্যাব বানাও, ক্লিক করলে content পরিবর্তন হবে।
import 'package:flutter/material.dart';
class CategoryTabsDemo extends StatelessWidget {
  const CategoryTabsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categories")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: () {}, child: Text("Books")),
              TextButton(onPressed: () {}, child: Text("Movies")),
              TextButton(onPressed: () {}, child: Text("Music")),
            ],
          ),
          Expanded(child: Center(child: Text("Selected Content"))),
        ],
      ),
    );
  }
}
