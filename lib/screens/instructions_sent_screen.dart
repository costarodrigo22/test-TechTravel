import 'package:flutter/material.dart';

class InstructionsSentScreen extends StatelessWidget {
  const InstructionsSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131418),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 36,
                      height: 36,
                      color: const Color(
                        0xB3FFFFFF,
                      ), // 70% branco (0xB3 = 179 = 70%)
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "The instructions\nwere sent!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "If this was a valid email, instructions to reset your password will be sent to you. Please check your email.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0x73FFFFFF),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ),

            // Botão "Login" fixado no rodapé
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0x33BC4CF1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFAA73F0)),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/login',
                        (route) => false,
                      ); // Voltar para login
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Color(0xFFAA73F0),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
