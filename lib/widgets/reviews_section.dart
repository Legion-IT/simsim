import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ReviewsSection extends StatelessWidget {
  const ReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final reviews = [
      {
        'name': 'Anna',
        'flag': '🇯🇵',
        'text': 'Fast activation and amazing coverage in Japan! I was able to navigate Tokyo like a pro without worrying about Wi-Fi. It felt like magic.'
      },
      {
        'name': 'Dmitry',
        'flag': '🇷🇺',
        'text': 'Очень удобно! Установил eSIM за пару минут, интернет работал стабильно по всей Европе. Рекомендую всем, кто часто путешествует.'
      },
      {
        'name': 'Noam',
        'flag': '🇮🇱',
        'text': 'פשוט תענוג! האינטרנט עבד חלק בכל היעדים, וההתקנה לקחה פחות מדקה. הרבה יותר נוח מסים פיזי.'
      },
      {
        'name': 'Mark',
        'flag': '🇺🇸',
        'text': 'So convenient. I’ll never buy a physical SIM again. Installed it at the airport, had signal before even grabbing my luggage. Total game changer!'
      },
      {
        'name': 'Margot',
        'flag': '🇫🇷',
        'text': 'Great support and very affordable rates. I contacted customer service late at night and got help within minutes — très impressionné!'
      },
      {
        'name': 'David',
        'flag': '🇬🇧',
        'text': 'Worked instantly in Europe. Setup took less than 2 minutes! Honestly, it was easier than ordering a cup of coffee in London.'
      },
      {
        'name': 'Sophia',
        'flag': '🇨🇦',
        'text': 'Best value eSIM provider I’ve tried so far. Used it across 3 countries, and not once did I lose connection. Plus, super easy to top up.'
      },
      {
        'name': 'Carlos',
        'flag': '🇲🇽',
        'text': 'I loved the digital-only experience — no more lost SIM cards. Traveling used to be stressful, now it’s just tap, scan, and surf!'
      },
      {
        'name': 'Layla',
        'flag': '🇸🇦',
        'text': 'الخدمة ممتازة والتغطية كانت رائعة طوال الرحلة. التفعيل كان سهل جدًا حتى لغير التقنيين مثلي. شكرًا لكم!'
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          const Text(
            '💬 What Our Customers Say',
            style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          CarouselSlider(
            options: CarouselOptions(
              height: 200, // increased to prevent overflow
              autoPlay: true,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              viewportFraction: 0.5,
            ),
            items: reviews.map((review) {
              return Builder(
                builder: (BuildContext context) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: List.generate(5, (index) => const Icon(Icons.star, color: Colors.amber, size: 20)),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            '"${review['text']}"',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            '${review['flag']} ${review['name']}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}