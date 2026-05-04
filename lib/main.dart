import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF4F4),
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Profile Image with border
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: const CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ),

                const SizedBox(height: 15),

                // Name
                const Text(
                  "NUR ANIS IZZETI BINTI ABU JANAH",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(221, 0, 0, 0),
                  ),
                ),

                const SizedBox(height: 8),

                // DOB + State
                const Text(
                  "DOB: 22 MARCH 2004\nKelanatan, Malaysia",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 15),

                // Contact Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        icon: const Icon(Icons.email, color: Colors.white),
                        onPressed: () {
                          launchUrl(Uri.parse("mailto:sayapunya22@gmail.com"));
                        },
                      ),
                    ),
                    const SizedBox(width: 15),
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 236, 161, 231),
                      child: IconButton(
                        icon: const Icon(Icons.phone, color: Colors.white),
                        onPressed: () {
                          launchUrl(Uri.parse("tel:0199063370"));
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // Quote
                const Text(
                  "\"Keep learning, keep growing 🚀\"",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}