import 'package:flutter/material.dart';
import 'main.dart'; // Import main.dart to navigate back to the LoginPage
import 'setting_page.dart'; // Import the SettingPage

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to SettingPage
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        SettingPage()), // Navigate to SettingPage
              );
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                  'assets/image/profile_picture.jpg'), // Replace with path to profile picture
            ),
            SizedBox(height: 20),
            // User Name
            Text(
              "Jonathan",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // User Email
            Text(
              "jonathan123@gmail.com",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
            // Additional Information
            Text(
              "Deskripsi atau informasi tambahan tentang pengguna dapat ditambahkan di sini.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 30),
            // Logout Button
            ElevatedButton(
              onPressed: () {
                // Navigate back to the LoginPage
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyApp()), // Navigating back to main.dart
                );
              },
              child: Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.red, // Use backgroundColor instead of primary
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
