import 'package:flutter/material.dart';

class FoodSelectionScreen extends StatefulWidget {
  const FoodSelectionScreen({super.key});

  @override
  State<FoodSelectionScreen> createState() => _FoodSelectionScreenState();
}

class _FoodSelectionScreenState extends State<FoodSelectionScreen> {
  // You can practice setState by tracking selected foods here
  List<String> selectedFoods = [];

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
      appBar: AppBar(
        title: const Text("Food Selection Practice"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                        });
                        selectedFoods.add(foods[index]);
                      },
                      child: Text(foods[index]),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Selected Foods:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              selectedFoods.join(", "),
              style: const TextStyle(fontSize: 16, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
