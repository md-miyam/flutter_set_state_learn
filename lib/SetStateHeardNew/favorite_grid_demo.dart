// Problem: একটি গ্রিডে প্রোডাক্ট দেখাও, প্রতিটি আইটেমে হার্ট আইকন থাকবে, ক্লিক করলে ফেভারিট হবে।
import 'package:flutter/material.dart';
class FavoriteGridDemo extends StatelessWidget {
  const FavoriteGridDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            child: Column(
              children: [
                Expanded(child: FlutterLogo()),
                IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
