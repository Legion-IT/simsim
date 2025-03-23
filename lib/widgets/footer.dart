import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Text("© 2025 ESimSim Store"),
          SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: [
              TextButton(onPressed: () {}, child: Text("Terms")),
              TextButton(onPressed: () {}, child: Text("Privacy")),
              TextButton(onPressed: () {}, child: Text("Support")),
              TextButton(onPressed: () {}, child: Text("Contact")),
            ],
          )
        ],
      ),
    );
  }
}
