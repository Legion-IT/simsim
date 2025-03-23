import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/wave_background.dart';
import '../widgets/hero_section.dart';
import '../widgets/plan_section.dart'; 
import '../widgets/how_it_works.dart';
import '../widgets/footer.dart';
import '../widgets/image_search_banner.dart';
import '../widgets/why_esim_section.dart';
import '../widgets/reviews_section.dart';
import '../widgets/contact_form_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),

            // 🔹 IMAGE STRIP WITH SEARCH BAR
            const ImageSearchBanner(),

            // 🔹 OVERLAPPING WAVE BACKGROUND + HERO SECTION
            SizedBox(
              height: 320,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Positioned.fill(
                    child: WaveBackground(),
                  ),
                  Positioned(
                    bottom: 60, // move it UP to sit visually inside the wave
                    child: HeroSection(),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),
            const Text(
              "🌍 Our Plans",
              style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // 🔥 DYNAMIC PLAN SELECTOR
            const PlanSection(),

            // const SizedBox(height: 40),
            // HowItWorks(),

            const SizedBox(height: 60),
            WhyEsimSection(),

            const SizedBox(height: 60),
            ReviewsSection(),

            const SizedBox(height: 40),
            ContactFormSection(),

            const SizedBox(height: 60),
            Footer(),
          ],
        ),
      ),
    );
  }
}
