import 'package:flutter/material.dart';

import '../widgets/profile_photo.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart'; // Tambahkan import ini

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'), //[cite: 1]
        backgroundColor: Colors.blue, //[cite: 1]
        foregroundColor: Colors.white, //[cite: 1]
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), //[cite: 1]
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, //[cite: 1]
            children: [
              const SizedBox(height: 24), //[cite: 1]
              const ProfilePhoto(radius: 60), //[cite: 1]
              const SizedBox(height: 24), //[cite: 1]
              const ProfileInfo(
                name: 'Habib Zikri Malik', //[cite: 1]
                nim: '25.11.6400', //[cite: 1]
                programStudi: 'S1 Informatika', //[cite: 1]
                email: 'h.zikri@students.amikom.ac.id', //[cite: 1]
                lokasi: 'Yogyakarta, Indonesia', //[cite: 1]
              ),
              const SizedBox(height: 24), //[cite: 1]
              // Tombol aksi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //[cite: 1]
                children: [
                  ElevatedButton.icon(
                    onPressed: () {}, //[cite: 1]
                    icon: const Icon(Icons.edit), //[cite: 1]
                    label: const Text('Edit'), //[cite: 1]
                  ),
                  ElevatedButton.icon(
                    onPressed: () {}, //[cite: 1]
                    icon: const Icon(Icons.share), //[cite: 1]
                    label: const Text('Bagikan'), //[cite: 1]
                  ),
                ],
              ),
              const SizedBox(height: 32),
              // Menambahkan Widget SocialMediaRow di sini
              const Text(
                'Media Sosial', 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
              ),
              const SizedBox(height: 8),
              const SocialMediaRow(), 
            ],
          ),
        ),
      ),
    );
  }
}