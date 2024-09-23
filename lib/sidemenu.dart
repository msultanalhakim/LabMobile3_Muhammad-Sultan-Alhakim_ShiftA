import 'package:auth_flutter/login_page.dart';
import 'package:flutter/material.dart';
import 'package:auth_flutter/home_page.dart';
import 'package:auth_flutter/about_page.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Add the logo here
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black87, // You can change this color as needed
            ),
            child: Center(
              child: Image.asset(
                'assets/images/logo.png', // Path to your logo
                height: 80, // Adjust the height as needed
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              'Homepage',
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ),
            onTap: () {
              // Navigasi ke Halaman Home
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text(
              'About',
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ),
            onTap: () {
              // Navigasi ke Halaman About
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ),
            onTap: () {
              // Example for clearing session data or shared preferences (if any)
              // You can include your logic here for logging out.

              // Navigasi ke Halaman Home (or login screen) and prevent going back
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
                (Route<dynamic> route) => false, // Prevent back navigation to previous screens
              );
            },
          ),
        ],
      ),
    );
  }

}