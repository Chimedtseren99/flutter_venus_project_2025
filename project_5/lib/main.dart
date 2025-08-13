// lib/main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_5/screens/feed_screen.dart';
import 'package:project_5/screens/profile_screen.dart';
import 'package:project_5/screens/signup_screen.dart';
import 'firebase_options.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp(),);
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Firebase App',
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            // Хэрэв хэрэглэгч нэвтэрсэн бол Home Screen руу шилжинэ
            return const HomeScreen();
          } else {
            // Хэрэглэгч нэвтрээгүй бол Login & Signup руу шилжинэ
            return const LoginAndSignUpScreen();
          }
        },
      ),
    );
  }
}


// Login болон Signup хоёрыг зохицуулах виджет
class LoginAndSignUpScreen extends StatefulWidget {
  const LoginAndSignUpScreen({Key? key}) : super(key: key);


  @override
  State<LoginAndSignUpScreen> createState() => _LoginAndSignUpScreenState();
}


class _LoginAndSignUpScreenState extends State<LoginAndSignUpScreen> {
  bool _showLoginScreen = true;


  void _toggleScreen() {
    setState(() {
      _showLoginScreen = !_showLoginScreen;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: _showLoginScreen
              ? LoginScreen(onSignUpPressed: _toggleScreen)
              : SignUpScreen(onLoginPressed: _toggleScreen),
        ),
      ),
    );
  }
}
