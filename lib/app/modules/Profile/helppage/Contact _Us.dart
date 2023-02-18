import 'package:cancer_chat/app/modules/Profile/helppage/HelpPage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../../core/theme/colors.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _SignUp=GlobalKey<FormState>();
 
  final passController=TextEditingController();
   late String _email;
  final fullnameController=TextEditingController();
  final emailController=TextEditingController();
  final messageController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: GNav(
            gap: 6,
            activeColor: AppColors.primary600,
            color: AppColors.primary600,
            tabBackgroundColor: AppColors.primary100,
            padding: EdgeInsets.all(18),
            tabBorderRadius: 15,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.calendar_month,
                text: 'Schedule',
              ),
              GButton(
                icon: Icons.list,
                text: 'List',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 10,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HelpPage()));
                      },
                      child: Container(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.blue[600],
                        ),
                      ),
                    ),
                    Text(
                      'Contact US',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              
                    SizedBox(
                      height: 10,
                    ),
                   Padding(
                           padding: const EdgeInsets.only(left: 45),
                           child: Row(
                                          children: [
                                            Text('FullName'),
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
                        Container(
                     height: 40,
                    width: 320,
                          child: TextField(
                              keyboardType: TextInputType.text,
                               controller: fullnameController,
                              decoration: InputDecoration(
                                
                                isDense: true,
                                hintText:  'Full name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(70),
                                ),
                              ),
                          ),
                        ),
                          SizedBox(
                          height: 30,
                        ),
                          Padding(
                            padding: const EdgeInsets.only(left:45),
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
                        Container(
                          height: 40,
                    width: 320,
                          child: TextField(
                              keyboardType: TextInputType.emailAddress,
                               controller: emailController,
                              decoration: InputDecoration(
                                
                                isDense: true,
                                hintText:  'Email',
                                suffixIcon: Icon(Icons.email_sharp),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(70),
                                ),
                              ),
                          ),
                        ), 
                        SizedBox(
                          height: 30,
                        ),
        
         Padding(
                           padding: const EdgeInsets.only(left: 45),
                           child: Row(
                                          children: [
                                            Text('Message',style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),),
                                            Text(
                                              '*',
                                              style: TextStyle(color: Colors.red),
                                            ),
                                            Spacer(),
                                             Padding(
                                               padding: const EdgeInsets.only(right: 15),
                                               child: Text('Max 250 words',),
                                             ),
        
                                          ],
                                        
                              ),
                         ),
                           SizedBox(
                          height: 10,
                        ),
                        Container(
                       
                          height: 130,
                    width: 320,
            
                          child: TextField(
                           textAlign: TextAlign.start,
                            maxLength: 250,
                              keyboardType: TextInputType.text,
                               controller: messageController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 110,top: 0.0),
                                isDense: true,
                                hintText:  'Message',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                          ),
                        ),
        
                         SizedBox(
                          height: 20,
                        ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Material(
                                    elevation: 5,
                                    color: Colors.blue[700],
                                    borderRadius: BorderRadius.circular(25),
                                    child: MaterialButton(
                                      onPressed: () {
                                       
                                      },
                                      minWidth: 200,
                                      height: 42,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          
                                          Text(
                        'Send message',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                                          ),
                                          SizedBox(width: 10,),
                                          Icon(Icons.send,size: 18, color: Colors.white)
                                        ],
                                      ),
                                    ),
                                  ),
                      ),
          ])  ),
        
          );
      
  }
}
