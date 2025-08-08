import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_5/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isLoading = false;
  bool _obscureText = true;

  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      try {
        await _auth.signInWithEmailAndPassword(
          email: _nameController.text.trim(),
          password: _passwordController.text.trim(),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Нэвтрэлт амжилттай')),
        );
        // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } on FirebaseAuthException catch (error) {
        String message = 'Нэвтрэлт амжилтгүй боллоо';
        if (error.code == 'user-not-found') {
          message = 'Нэвтрэх нэр олдсонгүй';
        } else if (error.code == 'wrong-password') {
          message = 'Нууц үг буруу байна';
        } else if (error.code == "invalid-email") {
          message = 'Нэрээ зөв оруулна уу';
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset('assets/images/Logo.png'),
                SizedBox(height: 20),
                TextFormField(
                  controller: _nameController,
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Нэвтрэх нэр",
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.person, color: Colors.white,),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Нэвтрэх нэрээ оруулна уу";
                    }
                    if (!value.contains("Uppercase") || !value.contains("")) {
                      return "Нэвтрэх нэр";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  style: TextStyle(color: Colors.white),
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      labelText: "Нууц үг",
                      border: OutlineInputBorder(),
                      prefix: Icon(Icons.lock, color: Colors.white,),
                      suffixIcon: IconButton(
                        icon: _obscureText
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Нууц үгээ оруулна уу";
                    }
                    if (value.length < 6) {
                      return "Нууц үг дор хаяж 6 оронтой байна";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                _isLoading
                    ? CircularProgressIndicator()
                    : Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [Color(0xffe86b02), Color(0xfffa9541)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            login();
                          },
                          child: Text(
                            'Нэвтрэх',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  child: RichText(
                    text: TextSpan(
                        text: 'Шинэ хэрэглэгч үү?  ',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.60),
                          fontSize: 15,
                          fontFamily: 'Rubik',
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Бүртгүүлэх',
                              style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xFFE76A01),
                              ))
                        ]),
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
