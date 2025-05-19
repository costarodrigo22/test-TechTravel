import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/complete_profile_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/instructions_sent_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Teste Prático',
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/complete-profile': (context) => const CompleteProfileScreen(),
        '/forgot-password':
            (context) => const ForgotPasswordScreen(), // adicionado
        '/instructions-sent':
            (context) => const InstructionsSentScreen(), // adicionado
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
