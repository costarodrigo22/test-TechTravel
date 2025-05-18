import 'package:desafio_flutter/screens/profile_picture_screen.dart';
import 'login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131418),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Center(
                child: Column(
                  children: [Image.asset('assets/images/logo.png', height: 80)],
                ),
              ),
              const SizedBox(height: 24),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(
                    color: Color(0x73FFFFFF),
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign In!',
                      style: const TextStyle(
                        color: Color(0xFFAA73F0),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const LoginScreen(),
                                ),
                              );
                            },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Create an account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'To get started, please complete your account registration',
                style: TextStyle(
                  color: Color(0x73FFFFFF),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google.png', height: 60),
                  const SizedBox(width: 24),
                  Image.asset('assets/images/apple.png', height: 60),
                ],
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Or Sign up With',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0x73FFFFFF),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 24),
              _buildTextField(hintText: 'Email'),
              const SizedBox(height: 16),
              _buildTextField(hintText: 'Password', obscureText: true),
              const SizedBox(height: 16),
              _buildTextField(
                hintText: 'Confirm your Password',
                obscureText: true,
              ),
              const SizedBox(height: 32),
              Container(
                width: 207,
                decoration: BoxDecoration(
                  color: const Color(0x33BC4CF1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFAA73F0)),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ProfilePictureScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      color: Color(0xFFAA73F0),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText, bool obscureText = false}) {
    return TextField(
      obscureText:
          obscureText
              ? (hintText == 'Password'
                  ? _obscurePassword
                  : _obscureConfirmPassword)
              : false,
      style: const TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF23252C),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF6C6D7A),
          fontFamily: 'Montserrat',
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFF6C6D7A)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF6C6D7A)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFAA73F0)),
        ),
        suffixIcon:
            obscureText
                ? IconButton(
                  icon: Icon(
                    (hintText == 'Password'
                            ? _obscurePassword
                            : _obscureConfirmPassword)
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.grey.shade600,
                  ),
                  onPressed: () {
                    setState(() {
                      if (hintText == 'Password') {
                        _obscurePassword = !_obscurePassword;
                      } else {
                        _obscureConfirmPassword = !_obscureConfirmPassword;
                      }
                    });
                  },
                )
                : null,
      ),
    );
  }
}
