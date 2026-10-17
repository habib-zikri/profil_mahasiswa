import 'package:flutter/material.dart';
import 'profile_photo.dart';
import 'profile_info.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfilePhoto(radius: 60), 
        SizedBox(height: 24), 
        ProfileInfo(
          name: 'Habib Zikri Malik', 
          nim: '25.11.6400', 
          programStudi: 'S1 Informatika', 
          email: 'h.zikri@students.amikom.ac.id', 
          lokasi: 'Yogyakarta, Indonesia', 
        ),
      ],
    );
  }
}