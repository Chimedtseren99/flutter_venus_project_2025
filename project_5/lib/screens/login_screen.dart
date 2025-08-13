// lib/screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback onSignUpPressed;

  const LoginScreen({super.key, required this.onSignUpPressed});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true; // Нууц үг харуулах/нуух товчлуурын төлөв

  bool _isLoading = false;

  // Нэвтрэх функцийг гүйцэтгэх
  Future<void> _login() async {
    // Талбарууд хоосон эсэхийг шалгах
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('И-мэйл болон нууц үгээ оруулна уу.')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      // Firebase Authentication-аар нэвтрэх
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      // Амжилттай нэвтэрсний дараа Home Screen руу шилжих
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    } on FirebaseAuthException catch (e) {
      // Алдаа гарвал SnackBar-аар харуулах
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? 'Нэвтрэх үед алдаа гарлаа.')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/Logo.png',
          ),
          const SizedBox(height: 48),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'И-мэйл',
              suffixStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Rubik',
              ),
              border: OutlineInputBorder(),
            ),
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Нууц үг',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: _obscureText ? Icon(Icons.visibility_off) : Icon(
                    Icons.visibility),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
            style: TextStyle(color: Colors.white),
            obscureText: _obscureText,
          ),
          const SizedBox(height: 24),
          _isLoading
              ? const CircularProgressIndicator()
              : Container(
                  child: TextButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Нэвтрэх',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Rubik',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      begin: Alignment(0.07, 1.00),
                      end: Alignment(0.96, 0.18),
                      colors: [
                        const Color(0xFFE76A01),
                        const Color(0xFFF99440)
                      ],
                    ),
                  ),
                ),
          const SizedBox(height: 16),
          Text(
            'Эсвэл',
            style: TextStyle(
                color: Colors.white38,
                fontSize: 14,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w400),
          ),
          TextButton(
            onPressed: widget.onSignUpPressed,
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Шинэ хэрэглэгч үү?  ',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 16,
                    ),
                  ),
                  TextSpan(
                    text: 'Бүртгүүлэх',
                    style: TextStyle(
                      color: const Color(0xFFE76A01),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Rubik',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
