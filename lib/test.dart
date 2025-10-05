import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar Navigation Demo"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: () {
                // Navigate to profile page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(
                      imagePath: "assets/ashraful2.jpg",
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.blueAccent),
                ),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/ashraful2.jpg"),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(child: Text("Home Screen")),
    );
  }
}





class ProfileScreen extends StatelessWidget {
  final String imagePath;

  ProfileScreen({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Screen")),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
