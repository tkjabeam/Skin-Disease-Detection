import 'package:flutter/material.dart';
import 'new_password_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  VerificationScreenState createState() => VerificationScreenState();
}

class VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter Verification Code',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              "If you didn't receive a code, Resend",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCodeBox(_controller1),
                _buildCodeBox(_controller2),
                _buildCodeBox(_controller3),
                _buildCodeBox(_controller4),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewPasswordScreen(),
                  ),
                );
              },
              child: const Text('Send'),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/icons/google_logo.png'),
                  iconSize: 25,
                  onPressed: () {
                    // Perform Google verification action
                  },
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: Image.asset('assets/icons/facebook_logo.png'),
                  iconSize: 25,
                  onPressed: () {
                    // Perform Facebook verification action
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Resend code action
              },
              child: const Text('Resend Code'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCodeBox(TextEditingController controller) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: controller,
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          counterText: '',
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            // Move to the next field when a digit is entered
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
