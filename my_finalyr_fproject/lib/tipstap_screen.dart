import 'package:flutter/material.dart';

class TipsTapScreen extends StatelessWidget {
  const TipsTapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skincare Tips'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/images/profile_picture.jpg'), // Replace with your profile image
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Welcome Back',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Jason Abeam',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Placeholder(
                fallbackHeight: 200,
                fallbackWidth: double.infinity,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/images/skincare1.jpg'), // Replace with your image
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    'Vitiligo is a chronic (long-lasting) autoimmune disorder that causes patches of skin to lose pigment or color. This happens when melanocytes, skin cells that make pigment, are attacked and destroyed, causing the skin to turn a milky-white color.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Vitiligo can get worse over time, with patches of skin losing more pigment. Anyone can get vitiligo, and it can develop at any age. It may be more noticeable in people with darker skin. '
                  'The white patches begin to appear in areas of the body exposed to the sun, such as the face, hands, arms, feet, and lips. It can also appear in other areas, such as the armpits, groin, and inside the mouth. '
                  'To learn more, tap on the link below: \n\n'
                  '• [Vitiligo Information](https://www.niams.nih.gov/health-topics/vitiligo)\n'
                  '• [Living with Vitiligo](https://www.vitiligoclinic.org/living-with-vitiligo)\n'
                  '• [Vitiligo Support](https://www.mayoclinic.org/diseases-conditions/vitiligo/support-groups)\n',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
