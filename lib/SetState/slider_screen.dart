import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slider Practice")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              onChanged: (value) {
                // Practice setState to update sliderValue
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text("Value: $_sliderValue", style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
