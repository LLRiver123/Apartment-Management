import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forget_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showpass=false;

  void login(username,password) async{

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
            onTap: () {
            FocusScope.of(context).unfocus(); // Ẩn bàn phím khi nhấn ra ngoài
          },
          child: Stack(
            children: [
              Image.network(
                'https://img.freepik.com/free-vector/blue-fluid-background-frame_53876-99019.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),

                    // Buildings image
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/images/login_image.jpg',
                            fit: BoxFit.cover,
                            color: const Color.fromRGBO(220, 245, 255, 1),
                            colorBlendMode: BlendMode.modulate,
                          ),
                        )
                    ),

                    // Hello, Welcome Back
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Center(
                        child: Text(
                          'Hello',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 0,0, 2),
                      child: Center(
                        child: Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    // Username box
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: TextFormField(
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                        obscureText: !_showpass,
                        decoration: const InputDecoration(
                          labelText: 'Username', // Dòng chữ chỉ dẫn nổi lên
                          floatingLabelBehavior: FloatingLabelBehavior.auto, // Hiệu ứng nổi
                          border: OutlineInputBorder(), // Viền cho ô
                        ),
                      ),
                    ),

                    // Password box
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextFormField(
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            obscureText: !_showpass,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.black54, fontSize: 15),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: GestureDetector(
                                onTap: showornot,
                                child: Icon(
                                    _showpass? Icons.visibility:Icons.visibility_off
                                )
                            ),
                          )

                        ],
                      ),

                    ),

                    // Sign in button
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                      child: Builder(
                          builder: (context) {
                            return TextButton(
                                onPressed: (){
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Home1()));
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.cyan,
                                  foregroundColor: Colors.white,
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('SIGN IN',style: TextStyle(fontSize: 25),),
                                  ],
                                )
                            );
                          }
                      ),
                    ),

                    // (Sign up, forgot password) row
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Builder(
                              builder: (context) {
                                return GestureDetector(
                                    child: const Text(
                                      'Sign up?',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    onTap: (){
                                      // Navigator.push(context, MaterialPageRoute(builder: (context) =>Signup() ));
                                    }
                                );
                              }
                          ),
                          Builder(
                              builder: (context) {
                                return GestureDetector(
                                  child: const Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.cyan,
                                    ),
                                  ),
                                  onTap: (){
                                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ForgetPasword()));
                                  },
                                );
                              }
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }

  void showornot(){
    setState(() {
      _showpass=!_showpass;
    });
  }
}