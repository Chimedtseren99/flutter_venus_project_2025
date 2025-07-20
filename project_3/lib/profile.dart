import 'package:flutter/material.dart';
import 'package:project03/home_screen.dart';
import 'package:project03/start_srceen.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Back button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => StartSrceen()));
                  },
                ),
              ),

              const SizedBox(height: 10),

              // Avatar
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.pink[50],
                child: Image.asset(
                  'assets/images/umbuu 1.png',
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Umbuu",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 30),

              // Name
              buildLabel("Name"),
              buildTextField("Umbuu"),

              const SizedBox(height: 20),

              // Gmail
              buildLabel("Gmail"),
              buildTextField("umbuu@gmail.com"),

              const SizedBox(height: 20),

              // Contact
              buildLabel("Contact"),
              buildTextField("9400 9229"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        initialValue: hint,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.pink[50],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
