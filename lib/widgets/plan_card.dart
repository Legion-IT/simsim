import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {
  final String title, data, duration, price, flag;

  const PlanCard({
    required this.title,
    required this.data,
    required this.duration,
    required this.price,
    required this.flag, // 🆕 Add flag
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: Container(
        width: 250,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(flag, style: const TextStyle(fontSize: 24)), // emoji flag or asset
                const SizedBox(width: 8),
                Expanded(
                  child: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text('$data – $duration'),
            const SizedBox(height: 10),
            Text(price, style: const TextStyle(fontSize: 18, color: Colors.green)),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text("Buy Now")),
          ],
        ),
      ),
    );
  }
}

