import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactFormSection extends StatefulWidget {
  const ContactFormSection({super.key});

  @override
  State<ContactFormSection> createState() => _ContactFormSectionState();
}

class _ContactFormSectionState extends State<ContactFormSection> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  bool isLoading = false;

  Future<void> sendForm() async {
    setState(() => isLoading = true);

    final response = await http.post(
      Uri.parse('https://formspree.io/f/mrbpkzey'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {
        'email': emailController.text,
        'message': messageController.text,
        'name': nameController.text,
      },
    );

    setState(() => isLoading = false);

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message sent!')),
      );
      nameController.clear();
      emailController.clear();
      messageController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to send. Try again later.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '📩 Contact Us',
            style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            width: 500,
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person_outline),
                    labelText: 'Your Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: 'Your Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: messageController,
                  maxLines: 5,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.message_outlined),
                    labelText: 'Your Message',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: isLoading ? null : sendForm,
                  icon: const Icon(Icons.send),
                  label: Text(isLoading ? 'Sending...' : 'Send Message'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
