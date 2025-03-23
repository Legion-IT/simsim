import 'package:flutter/material.dart';
import '../widgets/plan_card.dart';
import '../widgets/footer.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
          ),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.public, color: Colors.blueAccent),
                              SizedBox(width: 8),
                              Text(
                                "eSimSim",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 16,
                      children: [
                        TextButton(onPressed: () {}, child: const Text("All Plans")),
                        TextButton(onPressed: () {}, child: const Text("Buy eSIM")),
                        TextButton(onPressed: () {}, child: const Text("Help")),
                        TextButton(onPressed: () {}, child: const Text("About")),
                      ],
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.public, color: Colors.blueAccent),
                          SizedBox(width: 8),
                          Text(
                            "eSimSim",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: () {Navigator.pushNamed(context, '/plans');}, child: const Text("All Plans")),                    
                        TextButton(onPressed: () {}, child: const Text("Buy eSIM")),
                        TextButton(onPressed: () {}, child: const Text("Help")),
                        TextButton(onPressed: () {}, child: const Text("About")),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person_outline),
                    ),
                  ],
                ),
        );
      },
    );
  }
}