import 'package:cancer_chat/core/theme/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

import '../../sign_in/service/firebase_services.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String _email;
  final _SignUp = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  bool? isChecked = false;

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _SignUp,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Remix.shield_cross_fill,
                  color: AppColors.primary,
                  size: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Sign up for free',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 34,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Row(
                          children: const [
                            Text('Email'),
                            Text(
                              '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3, right: 8),
                        child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "invalid email";
                              }
                              validator:
                              (String value) {
                                if (value.isEmpty) {
                                  return "invalid email";
                                }
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return 'invalid email';
                                }
                                return null;
                              };
                              onSaved:
                              (String email) {
                                _email = email;
                              };
                              return null;
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Row(
                          children: const [
                            Text('Password'),
                            Text(
                              '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 8,
                          left: 3,
                        ),
                        child: TextFormField(
                            controller: passController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passToggle,
                            decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Password',
                              suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      obscureText:
                                      false;
                                      passToggle = !passToggle;
                                    });
                                  },
                                  child: Icon(passToggle
                                      ? Icons.visibility_off
                                      : Icons.visibility_outlined)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "!password doesnt match email";
                              }
                              return null;
                            }),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              activeColor: Colors.blue[700],
                              side: const BorderSide(color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              onChanged: (newBool) {
                                setState(() {
                                  isChecked = newBool;
                                });
                              }),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Material(
                  elevation: 5,
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(25),
                  child: MaterialButton(
                    onPressed: () {
                      if (_SignUp.currentState!.validate()) {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passController.text)
                            .then((value) {
                          print('Created new account');
                          context.go('/sign-in');
                        }).onError((error, stackTrace) {
                          print('Error ${error.toString()}');
                        });
                        print("sucess");
                        emailController.clear();
                        passController.clear();
                      }
                    },
                    minWidth: 320,
                    height: 42,
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Are you a medical specialist ? ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        context.go('/Specialist-SignIN');
                      },
                      child: Text(
                        'Sign up here',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                const Text('or continue with'),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2, left: 2),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 160,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  'assets/icons/face.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Text(
                                'FaceBook',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            await FirebaseServices().signInWithGoogle();
                            context.go('/home-page');
                          },
                          child: Container(
                            width: 160,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/icons/Google.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  'Google',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                      ),
                      TextButton(
                        onPressed: () {
                          context.go('/sign-in');
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
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
