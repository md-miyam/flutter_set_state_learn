import 'package:flutter/material.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  String? selectedFood;

  final List<String> foods = [
    "Pizza",
    "Burger",
    "Pasta",
    "Sandwich",
    "Salad",
    "Sushi",
    "Fried Rice",
    "Noodles",
    "Chicken Curry",
    "Beef Steak",
    "Ice Cream",
    "Cake",
    "Soup",
    "French Fries",
    "Hot Dog",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dropdown Practice"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              hint: const Text("Select a food"),
              value: selectedFood,
              items: foods.map((food) {
                return DropdownMenuItem<String>(value: food, child: Text(food));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedFood = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              selectedFood == null
                  ? "No food selected"
                  : "Selected: $selectedFood",
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
