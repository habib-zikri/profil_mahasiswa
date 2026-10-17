import 'package:flutter/material.dart';

import '../widgets/profile_photo.dart';
import '../widgets/profile_info.dart';
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
                    const ProfilePhoto(radius: 60), 
                    const SizedBox(height: 24), 
                    const ProfileInfo(
                      name: 'Habib Zikri Malik', 
                      nim: '25.11.6400', 
                      programStudi: 'S1 Informatika', 
                      email: 'h.zikri@students.amikom.ac.id', 
                      lokasi: 'Yogyakarta, Indonesia', 
                    ),
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
            Flexible(
              flex: 1,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {}, 
                      icon: const Icon(Icons.edit), 
                      label: const Text('Edit'), 
                    ),
                    ElevatedButton.icon(
                      onPressed: () {}, 
                      icon: const Icon(Icons.share), 
                      label: const Text('Bagikan'), 
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