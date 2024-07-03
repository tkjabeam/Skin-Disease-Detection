import 'package:flutter/material.dart';

// Assuming OnboardingScreen2 and LoginScreen are the next screens to navigate to
import 'onboarding_screen2.dart';
import 'login_screen.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/onboarding1.png', 
              height: 250,
            ),
            const SizedBox(height: 30),
            const Text(
              'TRANSFORM YOUR SKIN, TRANSFORM YOUR LIFE. WELCOME TO DERMA-PLUS!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to Derma-plus, your trusted companion for dermatological care from the comfort of your home! With Derma-plus, you can now connect with experienced dermatologists online.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 58, 58, 58)),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnboardingScreen2(),
                      ),
                    );
                  },
                  child: const Text('NEXT'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text('LOGIN'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
