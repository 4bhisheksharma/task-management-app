import 'package:flutter/material.dart';
import 'package:tms/themes/constant.dart';
import 'package:tms/widgets/contact_detail_row.dart';
import 'package:tms/widgets/contact_form.dart';
import 'package:tms/widgets/drawer.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us', style: TextStyle(color: MyTheme.textColor)),
        backgroundColor: kWhite,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Contact Info
            const Text(
              'Get in Touch',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

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

            const SizedBox(height: 30),

            // Contact Form
            const Text(
              'Send us a message',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),

            const ContactForm(),
          ],
        ),
      ),
    );
  }
}
