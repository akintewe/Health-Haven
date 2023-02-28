import 'package:cancer_chat/app/modules/firebase_services/service/firebase_services.dart';
import 'package:cancer_chat/core/theme/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool loading = false;
  late String _email;
  final _SignIn = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  bool? isChecked = false;
  void _loginWithFacebook() async {
    setState(() {
      loading = true;
    });
    try {
      final facebookLoginResult = await FacebookAuth.instance.login();
      final userData = await FacebookAuth.instance.getUserData();

      final FacebookAuthCredential = FacebookAuthProvider.credential(
          facebookLoginResult.accessToken!.token);
      await FirebaseAuth.instance.signInWithCredential(FacebookAuthCredential);

      await FirebaseFirestore.instance.collection('users').add({
        'email': userData['email'],
        'imageUrl': userData['picture']['data']['url'],
        'name': userData['name'],
      });
      context.go('/home-page');
    } on Exception catch (e) {
      var content = '';
      switch (e.toString()) {
        case 'account-exists-with-different-credential':
          content = 'This account exists with a different provider';
          break;
        case 'Invalid-credential':
          content = 'Unknown error has occured';
          break;
      }
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Login with facebook failed'),
                content: Text(content),
              ));
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _SignIn,
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
                  'Sign in to your account',
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
                              OnSaved:
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
                                    : Icons.visibility_outlined),
                              ),
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
                                fontSize: 13, fontWeight: FontWeight.bold),
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
                      if (_SignIn.currentState!.validate()) {
                        FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: emailController.text,
                                password: passController.text)
                            .then((value) {
                          context.go('/home-page');
                        }).catchError((error, stackTrace) {
                          print("Error ${error.toString()}");
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const AlertDialog(
                                  title: Text(
                                    'Invalid username or password',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                );
                              });
                        });
                      }
                    },
                    minWidth: 320,
                    height: 42,
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          context.go('/forgot-password');
                        },
                        child: const Text(
                          'forgot the password?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text('or continue with'),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2, left: 2),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _loginWithFacebook();
                          },
                          child: Container(
                            width: 160,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 2),
                                    color: Colors.black12,
                                    blurRadius: 10),
                              ],
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
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _loginWithFacebook();
                                  },
                                  child: const Text(
                                    'FaceBook',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Expanded(
                        child: Container(
                          width: 150,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 2),
                                  color: Colors.black12,
                                  blurRadius: 10),
                            ],
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  await FirebaseServices().signInWithGoogle();
                                  context.go('/home-page');
                                },
                                child: Container(
                                  child: Image.asset(
                                    'assets/icons/Google.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
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
                        'Don\'t have an account?',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14),
                      ),
                      TextButton(
                        onPressed: () {
                          context.go('/sign-up');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
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
