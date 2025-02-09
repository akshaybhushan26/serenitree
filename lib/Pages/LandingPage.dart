import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static const Color gradientStart = Colors.white;
  static const Color gradientEnd = Color.fromARGB(255, 206, 234, 240);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [gradientStart, gradientEnd],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: screenWidth / 2 - 225 / 2, // X-Coordinate
                top: screenHeight / 2 - 225 / 1, // Y-Coordinate
                child: ClipOval(
                  child: Image.asset(
                    'lib/assets/images/logo.png',
                    width: 225,
                    height: 225,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Centered content
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 400,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'SereniTree - Cultivating Calm, \n             Nurturing Mind🌿',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 19, 19, 19),
                            fontFamily: 'AbhayaLibre'),
                      ),
                    ),
                    const SizedBox(height: 120),
                    Container(
                      height: 60,
                      width: 327,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(150, 32, 168, 214),
                            Color.fromARGB(125, 32, 168, 214)
                          ])),
                      child: TextButton(
                        child: Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white,
                          fontWeight:FontWeight.normal,
                          fontSize: 18 ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
