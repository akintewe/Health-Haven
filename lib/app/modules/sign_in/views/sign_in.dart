import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late String _email;
  final _SignIn=GlobalKey<FormState>();
  final emailController=TextEditingController();
  final passController=TextEditingController();
  bool passToggle=true;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
          child: Form(
            key: _SignIn,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/app-logo.png',height: 200,width: 200,),
           SizedBox(height: 20,),
            Text(
              'Sign in to your account',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 34,
            ),
            Container(
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:35 ),
                    child: Row(
                      children: [
                        Text('Email'),
                        Text(
                          '*',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3 ,right: 8),
                    child: TextFormField(

                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText:  'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                        validator:(value) {
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
                          OnSaved:(String email) {
                            _email = email;
                          };
                        } ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Row(
                      children: [
                        Text('Password'),
                        Text(
                          '*',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8,left: 3,),
                    child: TextFormField(
                     controller: passController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(

                        isDense: true,
                        hintText: 'Password',
                        suffixIcon: InkWell(
                          onTap: (){
                            setState(() {
                              passToggle=!passToggle;
                            });
                          },
                          child: Icon(passToggle ? Icons.visibility_off:Icons.visibility_off),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),

                      ),
                    validator:(value) {
                      if (value!.isEmpty) {
                        return "!password doesnt match email";
                      }
                    }  ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: isChecked,
                          activeColor: Colors.blue[700],
                             side: BorderSide(color: Colors.blue),
                               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

                          onChanged: (newBool) {
                            setState(() {
                              isChecked = newBool;
                            });
                          }),
                      Text(
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
                  if(_SignIn.currentState!.validate()){
                    print("sucess");
                    emailController.clear();
                    passController.clear();
                  }
                },
                minWidth: 320,
                height: 42,
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  TextButton(
                    onPressed: () {},
                    child: Text(
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
            SizedBox(
              height: 5,
            ),
            Text('or continue with'),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 2,left: 2),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 160,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:[ BoxShadow(offset:Offset(0, 2),color: Colors.black12,blurRadius: 10 ),],


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
                          SizedBox(
                            width: 10,
                          ),
                          Text(
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
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:[ BoxShadow(offset:Offset(0, 2),color: Colors.black12,blurRadius: 10 ),],
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
                          SizedBox(
                            width: 6,
                          ),
                          Text(
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
                  Text('Already have an account?',style: TextStyle(fontWeight:FontWeight.w300,fontSize: 14),),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign in',
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
