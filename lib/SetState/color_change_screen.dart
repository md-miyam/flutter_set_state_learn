import 'package:flutter/material.dart';

class ColorChangeScreen extends StatefulWidget {
  const ColorChangeScreen({super.key});

  @override
  State<ColorChangeScreen> createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  List<Color> boxColor = [
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.purple,
    Colors.yellow,
    Colors.green,
    Colors.pinkAccent,
    Colors.indigo,
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Color Change Practice")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100, height: 100, color: boxColor[index]),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (index == 7) {
                    index = 0;
                  } else {
                    index++;
                  }
                });
              },
              child: const Text("Change Color"),
            ),
          ],
        ),
      ),
    );
  }
}
