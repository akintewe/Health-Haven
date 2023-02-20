import 'package:cancer_chat/app/modules/Profile/helppage/Contact%20_Us.dart';

import 'package:cancer_chat/app/modules/Profile/helppage/Privacy_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../../../core/theme/colors.dart';
import '../Profile_Settings.dart';
import 'FAQ_page.dart';
import 'TermsandConditions_page.dart';
class HelpPage extends StatefulWidget {

  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  
   var  _faceid=true;
 var _rememberme=true;
 var _Touchid=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: 
    
      GNav(
        
        
        
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
      body: Column(
        children: [
           Padding(
              padding: const EdgeInsets.only(left: 8,top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                minWidth: 10,
                     onPressed: (){
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileSettings(
                               
                                )));
                    },
                    child: Container(
                      
                      child: Icon(Icons.arrow_back,color: Colors.blue[600],),
                      
                    ),
                    
                  ),
                   Text(
                    'HELP',
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
          Column(
            children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             
                 
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'FAQ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child:MaterialButton(
                     minWidth: 6,
                     onPressed: (){
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FAQPage(
                               
                                )));
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(
              height: 40,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             
                 
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child:MaterialButton(
                     minWidth: 6,
                     onPressed: (){
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactUs(
                               
                                )));
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(
              height: 40,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             
                 
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: MaterialButton(
                     minWidth: 6,
                     onPressed: (){
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TermsandConditions(
                               
                                )));
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(
              height: 40,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             
                 
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Private Policy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child:MaterialButton(
                     minWidth: 6,
                     onPressed: (){
                       Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivacyPage(
                               
                                )));
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ],
            ),
           
                 
               
            ],
          )
        ],
      ),

    );
  }
}