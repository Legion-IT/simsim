import 'package:flutter/material.dart';
import '../pages/all_plans_page.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        children: [
          Text("Instant eSIM. Global Connectivity.", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Text("No physical SIM. No stores. Connect in minutes.", style: TextStyle(fontSize: 18)),
          SizedBox(height: 20),
          Wrap(
            spacing: 12,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Buy eSIM Now")),
              ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AllPlansPage()),
    );
  },
  child: const Text("View Plans"),
),
            ],
          )
        ],
      ),
    );
  }
}
