import 'package:flutter/material.dart';
import 'package:project_4/Solar.dart';
import 'package:project_4/Splash.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      // String email = _email.text;
      // String password = _password.text;
      Navigator.push(context, MaterialPageRoute(builder: (context) => Solar()));
    }
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child:
                  Image.asset("assets/images/image 10.png", fit: BoxFit.cover),
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 40)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Splash()));
                        },
                        child: Image.asset("assets/images/Vector 2.png")),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  height: 542,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Colors.black.withOpacity(0.5),
                    border: Border.all(width: 1, color: Colors.black54),
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: "Figtree",
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 320,
                          child: TextFormField(
                            controller: _email,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Chimdee@gmail.com',
                              hintStyle: const TextStyle(color: Colors.white54),
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.1),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  30.0,
                                ),
                                borderSide: const BorderSide(
                                    color: Colors.white54, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                    color: Colors.white54, width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: const BorderSide(
                                    color: Colors.white54, width: 2.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 20,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || !value.contains("@")) {
                                return "Мэйл хаягаа бичнэ үү";
                              }
                              return null;
                            },
                            // onSaved: (value) => _email = value,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Center(
                          child: Container(
                            width: 320,
                            child: TextFormField(
                              controller: _password,
                              obscureText: true,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle:
                                      const TextStyle(color: Colors.white54),
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(0.1),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      30.0,
                                    ),
                                    borderSide: const BorderSide(
                                        color: Colors.white54, width: 1.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: const BorderSide(
                                        color: Colors.white54, width: 1.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: const BorderSide(
                                        color: Colors.white54, width: 2.0),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 20,
                                  )),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter your password";
                                }
                                return null;
                              },
                              // onSaved: (value) => _password = value,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 20)),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Montserrat",
                                color: Color(0xff11dce8),
                              ),
                            )),
                        Container(
                          width: 279,
                          height: 44,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xff00E5E5),
                                  Color(0xff72A5F2),
                                  Color(0xffE961FF),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextButton(
                              onPressed: _login,

                              //     () {
                              //   if (_formKey.currentState!.validate()) {
                              //     _formKey.currentState!.save();
                              //     print('name $_email');
                              //   }
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //           builder: (context) => Solar()));
                              // },
                              style: const ButtonStyle(
                                overlayColor:
                                    WidgetStatePropertyAll(Colors.transparent),
                              ),
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                  fontFamily: "Figtree",
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24,
                                  color: Colors.white,
                                  height: 1,
                                ),
                              ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Vector 40.png"),
                            Text(
                              ' or sign in using ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Figtree",
                                color: Colors.grey,
                              ),
                            ),
                            Image.asset("assets/images/Vector 40.png"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/soc 1.png"),
                            Image.asset("assets/images/soc 2.png"),
                            Image.asset("assets/images/soc 3.png"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account?",
                              style: TextStyle(
                                fontFamily: "Figtree",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Solar()));
                              },
                              style: const ButtonStyle(
                                overlayColor:
                                    WidgetStatePropertyAll(Colors.transparent),
                              ),
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Montserrat",
                                  color: Color(0xff11dce8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
