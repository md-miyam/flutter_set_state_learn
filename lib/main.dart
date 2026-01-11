import 'package:flutter/material.dart';
import 'SetState/color_change_screen.dart';
import 'SetState/counter_screen.dart';
import 'SetState/dropdown_screen.dart';
import 'SetState/food_selection_screen.dart';
import 'SetState/password_screen.dart';
import 'SetState/slider_screen.dart';
import 'SetState/text_upate_screen.dart';
import 'SetState/toggle_screen.dart';
import 'SetState/visibility_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const FoodSelectionScreen(),
    );
  }
}

