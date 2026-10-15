import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart'; 

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String platformName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Anda mengklik $platformName'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.instagram), 
          color: Colors.pinkAccent,
          iconSize: 32,
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        const SizedBox(width: 16),
        // Ikon LinkedIn yang Asli
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.linkedin), 
          color: Colors.blue[700],
          iconSize: 32,
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        const SizedBox(width: 16),
        
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.github), 
          color: Colors.black,
          iconSize: 32,
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}