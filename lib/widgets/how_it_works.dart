import 'package:flutter/material.dart';

class HowItWorks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("📲 How It Works", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _step("1️⃣", "Choose a Plan"),
            _step("2️⃣", "Scan QR Code"),
            _step("3️⃣", "Start Using Data"),
          ],
        )
      ],
    );
  }

  Widget _step(String emoji, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(emoji, style: TextStyle(fontSize: 40)),
          SizedBox(height: 10),
          Text(text, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
