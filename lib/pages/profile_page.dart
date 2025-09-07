import 'package:flutter/material.dart';
import 'package:tms/themes/constant.dart';
import 'package:tms/widgets/drawer.dart';
import 'package:tms/widgets/profile_info_row.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Profile Picture
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),

              const SizedBox(height: 16),

              // Name
              const Text(
                'Ram Bahadur',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              // Email
              const Text(
                'iamrame@gmail.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),

              const SizedBox(height: 20),

              // User Info Card
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: const [
                      ProfileInfoRow(
                        icon: Icons.phone,
                        label: 'Phone',
                        value: '+977 9812345678',
                      ),
                      Divider(),
                      ProfileInfoRow(
                        icon: Icons.location_on,
                        label: 'Address',
                        value: 'Darchula, Nepal',
                      ),
                      Divider(),
                      ProfileInfoRow(
                        icon: Icons.cake,
                        label: 'Date of Birth',
                        value: '01 Jan 1999',
                      ),
                      Divider(),
                      ProfileInfoRow(
                        icon: Icons.badge,
                        label: 'Employee ID',
                        value: 'MAEMPHO112233',
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Edit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Handle edit profile action yo paxi garumla
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: kBlueDark,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



