import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_5/signup_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MaterialApp(
    home: SignupScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

