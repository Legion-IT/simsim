import 'package:flutter/material.dart';
import 'plan_card.dart';

class PlanSection extends StatefulWidget {
  const PlanSection({super.key});

  @override
  State<PlanSection> createState() => _PlanSectionState();
}

class _PlanSectionState extends State<PlanSection> {
  String selectedCategory = 'local';

final List<Map<String, String>> localPlans = [
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

final List<Map<String, String>> regionalPlans = [
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
  Widget build(BuildContext context) {
    final plans = selectedCategory == 'local' ? localPlans : regionalPlans;

    return Column(
      children: [
        // Toggle buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChoiceChip(
              label: const Text('Local SIMs'),
              selected: selectedCategory == 'local',
              onSelected: (_) => setState(() => selectedCategory = 'local'),
            ),
            const SizedBox(width: 16),
            ChoiceChip(
              label: const Text('Regional SIMs'),
              selected: selectedCategory == 'regional',
              onSelected: (_) => setState(() => selectedCategory = 'regional'),
            ),
          ],
        ),
        const SizedBox(height: 20),

        // Plan cards
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: plans
              .map((plan) => PlanCard(
                    title: plan['title']!,
                    flag: plan['flag']!,
                    data: plan['data']!,
                    duration: plan['duration']!,
                    price: plan['price']!,
                  ))
              .toList(),
        ),
      ],
    );
  }
}



// For API fetching, you can use the following code snippet:
// class _PlanSectionState extends State<PlanSection> {
//   String selectedCategory = 'local';
//   List<Map<String, String>> plans = [];
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     fetchPlans(); // Load default category
//   }

//   Future<void> fetchPlans() async {
//     setState(() => isLoading = true);

//     // 🧪 Imaginary API URL
//     final url = Uri.parse('https://api.esimstore.com/plans?category=$selectedCategory');

//     try {
//       final response = await http.get(url);

//       if (response.statusCode == 200) {
//         final List<dynamic> jsonData = json.decode(response.body);

//         // Convert dynamic list to list of Map<String, String>
//         setState(() {
//           plans = jsonData.map<Map<String, String>>((item) {
//             return {
//               'title': item['title'],
//               'flag': item['flag'],
//               'data': item['data'],
//               'duration': item['duration'],
//               'price': item['price'],
//             };
//           }).toList();
//         });
//       } else {
//         print("Failed to fetch plans. Status: ${response.statusCode}");
//       }
//     } catch (e) {
//       print("Error fetching plans: $e");
//     } finally {
//       setState(() => isLoading = false);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Category switch
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ChoiceChip(
//               label: const Text('Local SIMs'),
//               selected: selectedCategory == 'local',
//               onSelected: (_) {
//                 setState(() => selectedCategory = 'local');
//                 fetchPlans(); // 👈 fetch again when category changes
//               },
//             ),
//             const SizedBox(width: 16),
//             ChoiceChip(
//               label: const Text('Regional SIMs'),
//               selected: selectedCategory == 'regional',
//               onSelected: (_) {
//                 setState(() => selectedCategory = 'regional');
//                 fetchPlans();
//               },
//             ),
//           ],
//         ),
//         const SizedBox(height: 20),

//         // Loading or cards
//         if (isLoading)
//           const CircularProgressIndicator()
//         else
//           Wrap(
//             spacing: 20,
//             runSpacing: 20,
//             children: plans
//                 .map((plan) => PlanCard(
//                       title: plan['title']!,
//                       flag: plan['flag']!,
//                       data: plan['data']!,
//                       duration: plan['duration']!,
//                       price: plan['price']!,
//                     ))
//                 .toList(),
//           ),
//       ],
//     );
//   }
// }