import 'package:flutter/material.dart';
import '../widgets/plan_card.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';

class AllPlansPage extends StatefulWidget {
  const AllPlansPage({super.key});

  @override
  State<AllPlansPage> createState() => _AllPlansPageState();
}

class _AllPlansPageState extends State<AllPlansPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  final List<Map<String, String>> localPlans = const [
    {'title': 'Japan eSIM', 'flag': '🇯🇵', 'data': '3GB', 'duration': '7 days', 'price': '\$6.99'},
    {'title': 'USA eSIM', 'flag': '🇺🇸', 'data': '5GB', 'duration': '15 days', 'price': '\$9.99'},
    {'title': 'UK eSIM', 'flag': '🇬🇧', 'data': '10GB', 'duration': '30 days', 'price': '\$12.99'},
    {'title': 'Canada eSIM', 'flag': '🇨🇦', 'data': '4GB', 'duration': '10 days', 'price': '\$8.99'},
    {'title': 'South Korea eSIM', 'flag': '🇰🇷', 'data': '6GB', 'duration': '14 days', 'price': '\$10.99'},
    {'title': 'Australia eSIM', 'flag': '🇦🇺', 'data': '8GB', 'duration': '30 days', 'price': '\$13.99'},
    {'title': 'India eSIM', 'flag': '🇮🇳', 'data': '5GB', 'duration': '14 days', 'price': '\$7.49'},
    {'title': 'France eSIM', 'flag': '🇫🇷', 'data': '7GB', 'duration': '20 days', 'price': '\$11.99'},
    {'title': 'Mexico eSIM', 'flag': '🇲🇽', 'data': '3GB', 'duration': '10 days', 'price': '\$6.49'},
  ];

  final List<Map<String, String>> regionalPlans = const [
    {'title': 'Europe Plan', 'flag': '🇪🇺', 'data': '10GB', 'duration': '30 days', 'price': '\$19.99'},
    {'title': 'Asia Plan', 'flag': '🌏', 'data': '6GB', 'duration': '14 days', 'price': '\$14.99'},
    {'title': 'Africa Plan', 'flag': '🌍', 'data': '3GB', 'duration': '7 days', 'price': '\$9.99'},
    {'title': 'North America Plan', 'flag': '🌎', 'data': '8GB', 'duration': '21 days', 'price': '\$16.99'},
    {'title': 'Latin America Plan', 'flag': '🇦🇷', 'data': '5GB', 'duration': '15 days', 'price': '\$12.49'},
    {'title': 'Middle East Plan', 'flag': '🇮🇱', 'data': '4GB', 'duration': '10 days', 'price': '\$11.49'},
    {'title': 'Asia Plan', 'flag': '🇸🇬', 'data': '7GB', 'duration': '14 days', 'price': '\$13.99'},
    {'title': 'Oceania Plan', 'flag': '🇳🇿', 'data': '6GB', 'duration': '20 days', 'price': '\$14.99'},
    {'title': 'Eastern Europe', 'flag': '🇵🇱', 'data': '8GB', 'duration': '30 days', 'price': '\$15.99'},
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "📍 Local SIMs",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: localPlans
                          .map<Widget>((plan) => PlanCard(
                                title: plan['title']!,
                                flag: plan['flag']!,
                                data: plan['data']!,
                                duration: plan['duration']!,
                                price: plan['price']!,
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      "🌍 Regional SIMs",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: regionalPlans
                          .map<Widget>((plan) => PlanCard(
                                title: plan['title']!,
                                flag: plan['flag']!,
                                data: plan['data']!,
                                duration: plan['duration']!,
                                price: plan['price']!,
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}