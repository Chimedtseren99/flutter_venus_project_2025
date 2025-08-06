import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Бүртгүүлэх'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.email),
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
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      prefix: Icon(Icons.lock),
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
                  obscureText: _obscureText2,
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(),
                      prefix: Icon(Icons.lock),
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
                _isLoading?
                CircularProgressIndicator()
                    : ElevatedButton(
                  onPressed: () {
                    signup();
                  },
                  child: Text(
                    'Бүргүүлэх',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.blueAccent,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // TextButton(
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => ()));
                //     },
                //     child: Text('Аль хэдийн бүртгэлтэй юу? Нэвтрэх')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
