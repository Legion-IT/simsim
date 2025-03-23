import 'package:flutter/material.dart';

class ImageSearchBanner extends StatelessWidget {
  const ImageSearchBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // 🔽 Background image
          Image.network(
            'https://images.unsplash.com/photo-1526045612212-70caf35c14df?fit=crop&w=1200&q=80',
            fit: BoxFit.cover,
          ),

          // 🔲 Overlay
          Container(color: Colors.black.withOpacity(0.4)),

          // 🔍 Search Bar in center
          Center(
            child: Container(
              width: 600,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 10),
                ],
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Colors.grey),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: "Search eSIM destinations (e.g. Japan, Europe)",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
