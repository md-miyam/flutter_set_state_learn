// Problem: একটি প্রোডাক্ট quantity বাড়ানো/কমানোর UI বানাও, সাথে মোট দাম দেখাবে।
import 'package:flutter/material.dart';

class ProductQuantityDemo extends StatelessWidget {
  const ProductQuantityDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shopping Cart")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: Icon(Icons.remove), onPressed: () {}),
                Text("0", style: TextStyle(fontSize: 24)),
                IconButton(icon: Icon(Icons.add), onPressed: () {}),
              ],
            ),
            SizedBox(height: 20),
            Text("Total Price: 0 ৳", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
