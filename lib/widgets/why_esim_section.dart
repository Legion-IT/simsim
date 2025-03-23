import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WhyEsimSection extends StatefulWidget {
  const WhyEsimSection({super.key});

  @override
  State<WhyEsimSection> createState() => _WhyEsimSectionState();
}

class _WhyEsimSectionState extends State<WhyEsimSection>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
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
    final features = [
      {
        'icon': FontAwesomeIcons.wifi,
        'title': 'Instant Connectivity',
        'desc': 'Activate your plan instantly — no physical SIM required. Enjoy seamless connectivity the moment you land.'
      },
      {
        'icon': FontAwesomeIcons.planeDeparture,
        'title': 'Perfect for Travelers',
        'desc': 'Stay connected globally without roaming charges. Our eSIM ensures you’re always in touch, wherever you go.'
      },
      {
        'icon': FontAwesomeIcons.lock,
        'title': 'Secure & Reliable',
        'desc': 'Protected network profiles and seamless switching. Your data remains secure while enjoying reliable service.'
      },
      {
        'icon': FontAwesomeIcons.recycle,
        'title': 'Eco-Friendly',
        'desc': 'No plastic waste. eSIMs are 100% digital and contribute to a greener planet by eliminating physical SIM cards.'
      },
    ];

    int featuresCount = features.length;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Fade-in animation for the title.
          FadeTransition(
            opacity: CurvedAnimation(
              parent: _controller,
              curve: const Interval(0.0, 0.3, curve: Curves.easeIn),
            ),
            child: const Text(
              '📶 Why Use eSIM?',
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: List.generate(featuresCount, (index) {
              final feature = features[index];
              // Create a staggered animation interval for each feature card.
              final start = 0.3 + (index * (0.7 / featuresCount));
              final end = start + (0.7 / featuresCount);
              final animation = CurvedAnimation(
                parent: _controller,
                curve: Interval(start, end, curve: Curves.easeIn),
              );
              return FadeTransition(
                opacity: animation,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  width: 300, // Increased width for longer columns
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(
                        feature['icon'] as IconData,
                        size: 36,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        feature['title'] as String,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        feature['desc'] as String,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
