// Problem: একটি কার্ট আইকন বানাও, যেখানে badge এ item সংখ্যা দেখাবে।
import 'package:flutter/material.dart';
class CartBadgeDemo extends StatelessWidget {
  const CartBadgeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Badge"),
        actions: [
          Stack(
            children: [
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
              Positioned(
                right: 8,
                top: 8,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                  child: Text("0", style: TextStyle(fontSize: 12, color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
