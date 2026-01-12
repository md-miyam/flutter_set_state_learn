// Problem: একটি FAQ লিস্ট বানাও, প্রশ্নে ক্লিক করলে উত্তর expand হবে।
import 'package:flutter/material.dart';
class FAQDemo extends StatelessWidget {
  const FAQDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FAQ")),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text("What is Flutter?"),
            children: [Padding(padding: EdgeInsets.all(8), child: Text("Answer here..."))],
          ),
        ],
      ),
    );
  }
}
