import 'package:flutter/material.dart';
import 'change_password_modal.dart'; // Importa o modal

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _openChangePasswordModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: const Color(0xFF1A1A1A),
      builder:
          (_) => const FractionallySizedBox(
            heightFactor: 1.0,
            child: ChangePasswordModal(),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header: seta + botão editar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Color(0xFFAA73F0),
                    onPressed: () => Navigator.pop(context),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0x33BC4CF1)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21),
                      ),
                      foregroundColor: const Color(0xFFAA73F0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Edit profile',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Perfil: imagem + nome
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(55),
                    child: Image.asset(
                      'assets/images/profile_mock.png',
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Eva Mendes',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Botões de ação
              _ActionButton(
                iconPath: 'assets/images/shield.png',
                text: 'Change Password',
                onTap: () => _openChangePasswordModal(context),
              ),
              const SizedBox(height: 12),
              _ActionButton(
                iconPath: 'assets/images/trash.png',
                text: 'Delete my account',
                onTap: () {},
              ),
              const SizedBox(height: 32),

              // Subscriptions
              const Text(
                'Subscriptions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                height: 82,
                decoration: BoxDecoration(
                  color: const Color(0xE533333F),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logo_purple.png',
                      width: 67,
                      height: 67,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'STREAM Premium',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Jan 22, 2023',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Coming soon',
                      style: TextStyle(
                        color: Color(0xFFAA73F0),
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              // History
              const Text(
                'History',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  _HistoryCard(
                    imagePath: 'assets/images/movie_one.png',
                    title: 'Barbie',
                    year: '2023',
                  ),
                  const SizedBox(width: 12),
                  _HistoryCard(
                    imagePath: 'assets/images/movie_two.png',
                    title: 'Every...',
                    year: '2022',
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Logout
              Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: const Color(0x73D9DADE), // 45% opacity
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                    minimumSize: const Size(110, 42),
                    foregroundColor: const Color(0x73D9DADE), // 45% opacity
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

// Botões de ação
class _ActionButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback onTap;

  const _ActionButton({
    required this.iconPath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xE533333F),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Image.asset(iconPath, width: 24, height: 24, color: Colors.white),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.white, size: 24),
          ],
        ),
      ),
    );
  }
}

// Cartão de histórico
class _HistoryCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String year;

  const _HistoryCard({
    required this.imagePath,
    required this.title,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      height: 100,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              width: 165,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 8,
            bottom: 8,
            child: Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  '• $year',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
