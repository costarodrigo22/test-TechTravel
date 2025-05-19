import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isRatingPopupVisible = false;

  void toggleRatingPopup() {
    setState(() {
      isRatingPopupVisible = !isRatingPopupVisible;
    });
  }

  void closeRatingPopup() {
    if (isRatingPopupVisible) {
      setState(() {
        isRatingPopupVisible = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: closeRatingPopup,
      child: Scaffold(
        backgroundColor: const Color(0xFF1A1A1A),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 32),
                    Image.asset(
                      'assets/images/logo.png',
                      width: 32,
                      height: 32,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'assets/images/profile_mock.png',
                        width: 32,
                        height: 32,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Now Showing",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/images/movie_mock.png',
                          fit: BoxFit.cover,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                const Color(0xFF000000).withAlpha(200),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(),
                              const Text(
                                "Musical",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "Barbie",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                "Comments 1.322",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "• Lorem ipsum dolor sit amet, consect...",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                              const SizedBox(height: 24),
                              Center(
                                child: Container(
                                  width: 207,
                                  height: 41,
                                  decoration: BoxDecoration(
                                    color: const Color(0x33BC4CF1),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: const Color(0xFFAA73F0),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Watch",
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
                              const SizedBox(height: 16),
                              const Divider(color: Colors.white54),
                              const SizedBox(height: 12),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: toggleRatingPopup,
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/like.png',
                                              width: 24,
                                              height: 24,
                                            ),
                                            const SizedBox(height: 4),
                                            const Text(
                                              "Rate",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Montserrat',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 24),
                                      Column(
                                        children: [
                                          Image.asset(
                                            'assets/images/send.png',
                                            width: 24,
                                            height: 24,
                                          ),
                                          const SizedBox(height: 4),
                                          const Text(
                                            "Gift to someone?",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: const [
                                          Text(
                                            "Available until",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            "Fev 29, 2023",
                                            style: TextStyle(
                                              color: Color(0xFFAA73F0),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  if (isRatingPopupVisible)
                                    Positioned(
                                      bottom: 48,
                                      left: 0,
                                      child: Material(
                                        color: Colors.transparent,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 12,
                                            horizontal: 16,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color(0xCC1A1A20),
                                            borderRadius: BorderRadius.circular(
                                              24,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/unlike.png',
                                                    width: 24,
                                                    height: 24,
                                                  ),
                                                  const SizedBox(height: 4),
                                                  const Text(
                                                    "It's not for me",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontFamily: 'Montserrat',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(width: 24),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/like.png',
                                                    width: 24,
                                                    height: 24,
                                                  ),
                                                  const SizedBox(height: 4),
                                                  const Text(
                                                    "I like it",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontFamily: 'Montserrat',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(width: 24),
                                              Column(
                                                children: [
                                                  Image.asset(
                                                    'assets/images/duble_like.png',
                                                    width: 24,
                                                    height: 24,
                                                  ),
                                                  const SizedBox(height: 4),
                                                  const Text(
                                                    "I love it!",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                      fontFamily: 'Montserrat',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(width: 16),
                                              GestureDetector(
                                                onTap: closeRatingPopup,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Color(0xFFAA73F0),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          10,
                                                        ),
                                                  ),
                                                  padding: const EdgeInsets.all(
                                                    4,
                                                  ),
                                                  child: const Icon(
                                                    Icons.close,
                                                    size: 16,
                                                    color: Color(0xFFAA73F0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
