import 'package:flutter/material.dart';
import 'package:tms/widgets/contact_detail_row.dart';
import 'package:tms/widgets/drawer.dart';
import 'package:tms/widgets/faq_item.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Help & Support',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Title
            const Text(
              'FAQs',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // FAQ Expansion Tiles
            const FAQItem(
              question: 'What does “it compiles” mean?',
              answer: 'It means you’re absolutely getting bug in runtime.',
            ),
            const FAQItem(
              question: 'Why is my Flutter app not building?',
              answer: 'Bhai `flutter pub get` chai kasle garidinchha?.',
            ),
            const FAQItem(
              question: 'Is null really evil?',
              answer: 'Did you mean The Nun in Conjuring?',
            ),
            const FAQItem(
              question: 'What’s the fastest way to fix a bug?',
              answer: 'Do chatGPT',
            ),

            const SizedBox(height: 30),

            // Contact Support Section
            const Text(
              'Need More Help?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    ContactDetailRow(
                      icon: Icons.email,
                      label: 'Email',
                      value: 'support@tms.com',
                    ),
                    Divider(),
                    ContactDetailRow(
                      icon: Icons.phone,
                      label: 'Phone',
                      value: '+977 9800000000',
                    ),
                    Divider(),
                    ContactDetailRow(
                      icon: Icons.location_on,
                      label: 'Address',
                      value: 'TMS Headquarters, Kathmandu, Nepal',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
