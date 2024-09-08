import 'package:fig_to_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static const String routeName = '/signup';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _signUpImageSection(),
          const SizedBox(
            height: 30,
          ),
          _signUpTextAndButtonSection(context),
        ],
      ),
    );
  }

  Widget _signUpTextAndButtonSection(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'We are here to make your',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Text(
          'holiday easier',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(' simply dummy text of the printing and typesetting'),
        const Text('It is a long established fact that '),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 103, 81, 163)),
              onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
              child: const Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.cyan, fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _signUpImageSection() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.elliptical(200, 30),
        bottomRight: Radius.elliptical(300, 100),
      ),
      child: Image.asset(
        'assets/images/login_image.png',
        height: 500,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
