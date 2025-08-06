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
  final TextEditingController _emailController = TextEditingController();
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
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Нэвтрэлт амжилттай')),
        );
        // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } on FirebaseAuthException catch (error){
        String message = 'Нэвтрэлт амжилтгүй боллоо';
        if (error.code == 'user-not-found'){
          message = 'И-мэйл хаяг олдсонгүй';
        } else if (error.code == 'wrong-password'){
          message = 'Нууц үг буруу байна';
        } else if (error.code == "invalid-email"){
          message = 'И-мэйл хаяг буруу форматтай байна';
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      }
      finally {
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
        title: Text('Нэвтрэх'),
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
                SizedBox(height: 20,),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      prefix: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: _obscureText ? Icon(Icons.visibility_off) : Icon(
                            Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      )
                  ),
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
                SizedBox(height: 20,),
                _isLoading ? CircularProgressIndicator():
                ElevatedButton(onPressed: () {
                  login();
                },
                  child: Text('Нэвтрэх',
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
                SizedBox(height: 20,),
                TextButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                    child: Text('Бүртгэлгүй юу? Бүртгүүлэх')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}