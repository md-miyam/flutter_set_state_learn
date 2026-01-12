import 'package:flutter/material.dart';

class VisibilityScreen extends StatefulWidget {
  const VisibilityScreen({super.key});

  @override
  State<VisibilityScreen> createState() => _VisibilityScreenState();
}

class _VisibilityScreenState extends State<VisibilityScreen> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Visibility Practice")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isVisible
                ? Text(
                    "Now you see me!",
                    style: TextStyle(fontSize: 24, color: Colors.blue),
                  )
                : Text("", style: TextStyle(fontSize: 24, color: Colors.blue)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Practice setState to toggle isVisible
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: const Text("Toggle Visibility"),
            ),
          ],
        ),
      ),
    );
  }
}
