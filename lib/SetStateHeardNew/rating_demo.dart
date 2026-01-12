// Problem: একটি প্রোডাক্টে ৫টা স্টার থাকবে, ক্লিক করলে রেটিং আপডেট হবে।
import 'package:flutter/material.dart';
class RatingDemo extends StatelessWidget {
  const RatingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rate Product")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          return IconButton(icon: Icon(Icons.star_border), onPressed: () {});
        }),
      ),
    );
  }
}
