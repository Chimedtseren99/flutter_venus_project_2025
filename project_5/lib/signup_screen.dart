import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_5/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isLoading = false;
  bool _obscureText = true;
  bool _obscureText2 = true;

  Future<void> signup() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      try {
        await _auth.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Бүртгэл амжилттай. Одоо нэвтрэнэ үү.')),
        );
      } on FirebaseAuthException catch (error) {
        String message = "Бүртгэл амжилтгүй боллоо.";
        if (error.code == "weak-password") {
          message = "Нууц үг сул байна";
        } else if (error.code == "email-already-in-use") {
          message = "Энэ и-мэйл хаяг бүртгэлтэй байна";
        } else if (error.code == "invalid-email") {
          message = "И-мэйл хаяг буруу форматтай байна";
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
    return SafeArea(
      child: Scaffold(
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
                    decoration: InputDecoration(
                      labelText: "Нэвтрэх нэр",
                      border: OutlineInputBorder(),
                      prefix: Icon(Icons.person, color: Colors.white,),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailController,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      prefix: Icon(Icons.email, color: Colors.white,),

                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "И-мэйл хаягаа оруулна уу";
                      }
                      if (!value.contains("@") || !value.contains(".")) {
                        return "Буруу и-мэйл хаяг";
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
                        labelText: "Password",
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
                  TextFormField(
                    controller: _confirmPasswordController,
                    style: TextStyle(color: Colors.white),
                    obscureText: _obscureText2,
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(),
                        prefix: Icon(Icons.lock, color: Colors.white),
                        suffixIcon: IconButton(
                          icon: _obscureText2
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _obscureText2 = !_obscureText2;
                            });
                          },
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Нууц үгээ давтан оруулна уу";
                      }
                      if (value != _passwordController.text) {
                        return "Нууц үг таарахгүй байна";
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
                              signup();
                            },
                            child: Text(
                              'Бүртгүүлэх',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Эсвэл',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.60),
                      fontSize: 14,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: RichText(
                      text: TextSpan(
                          text: 'Бүртгэлтэй юу?  ',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.60),
                            fontSize: 15,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Нэвтрэх',
                                style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.underline,
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
      ),
    );
  }
}
