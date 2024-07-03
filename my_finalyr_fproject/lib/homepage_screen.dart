// home_page_screen.dart
import 'package:flutter/material.dart';
import 'tipstap_screen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Welcome Back',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Jason Abeam',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
              CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'assets/images/user_avatar.png'), // Add your avatar image here
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Skincare Tips and Advice',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/skincare_tips.png'), // Add your image here
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TipsTapScreen()),
                  );
                },
                child: const Text('Explore My Feed'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Skin Analysis Options',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildAnalysisOption(
                    context,
                    'Photo Upload for Analysis',
                    'assets/images/photo_upload.png', // Add your image here
                  ),
                  _buildAnalysisOption(
                    context,
                    'Skin Type Identification',
                    'assets/images/skin_type.png', // Add your image here
                  ),
                  _buildAnalysisOption(
                    context,
                    'Emergency Assistance',
                    'assets/images/emergency_assistance.png', // Add your image here
                  ),
                  _buildAnalysisOption(
                    context,
                    'Dermatologist',
                    'assets/images/dermatologist.png', // Add your image here
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnalysisOption(
      BuildContext context, String title, String imagePath) {
    return GestureDetector(
      onTap: () {
        // Handle navigation
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
