import 'package:flutter/material.dart';

import '../widgets/profile_header.dart'; 
import '../widgets/action_buttons.dart'; 
import '../widgets/social_media_row.dart'; 
import '../widgets/about_screen.dart'; 

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'), 
        backgroundColor: Colors.blue, 
        foregroundColor: Colors.white, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center, 
                  children: [
                    const SizedBox(height: 24), 
                    const ProfileHeader(), 
                    const SizedBox(height: 32),
                    const Text(
                      'Media Sosial', 
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                    ),
                    const SizedBox(height: 8),
                    const SocialMediaRow(),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutScreen(),
                          ),
                        );
                      },
                      child: const Text('Tentang Aplikasi'),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              child: Center(
                child: ActionButtons(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}