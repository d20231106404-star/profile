import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const ProfileApp());
}

/// MAIN APP
class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(primarySwatch: Colors.pink, fontFamily: 'Roboto'),
      home: const ProfileScreen(),
    );
  }
}

/// PROFILE SCREEN
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<void> _email() async {
    await launchUrl(Uri.parse("mailto:sayapunya22@gmail.com"));
  }

  Future<void> _phone() async {
    await launchUrl(Uri.parse("tel:0199063370"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F2F6),

      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.pink,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              /// MAIN CARD
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 12,
                    ),
                  ],
                ),

                child: Column(
                  children: [
                    /// PROFILE IMAGE
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.pink, width: 2),
                      ),
                      child: const CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage(
                          'assets/images/profile.jpg',
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    /// NAME
                    const Text(
                      "NUR ANIS IZZETI BINTI ABU JANAH",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "Software Engineering Student (UPSI)",
                      style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    const SizedBox(height: 18),

                    /// INFO BOX
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9F5F8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Column(
                        children: [
                          Text("Date of Birth : 22 March 2004"),
                          SizedBox(height: 6),
                          Text("Location : Kelantan, Malaysia"),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// BUTTONS (SOFT COLORS)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// EMAIL (soft pink)
                        ElevatedButton.icon(
                          onPressed: _email,
                          icon: const Icon(Icons.email, color: Colors.white),
                          label: const Text("Email"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF48FB1), // soft pink
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 12,
                            ),
                          ),
                        ),

                        const SizedBox(width: 12),

                        /// CALL (soft pink-purple)
                        ElevatedButton.icon(
                          onPressed: _phone,
                          icon: const Icon(Icons.phone, color: Colors.white),
                          label: const Text("Call"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(
                              0xFFCE93D8,
                            ), // soft purple pink
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// ABOUT ME CARD (FIXED + JUSTIFIED)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Text(
                  "I am a Year 3 Software Engineering student at Universiti Pendidikan Sultan Idris (UPSI). "
                  "I am kind, responsible, and hardworking.\n\n"
                  "I enjoy learning mobile app development using Flutter. I always try my best in everything I do "
                  "and believe in growing step by step.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14.5,
                    height: 1.4,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
