import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../../core/theme/colors.dart';

import 'HelpPage.dart';
class TermsandConditions extends StatefulWidget {
  const TermsandConditions({super.key});

  @override
  State<TermsandConditions> createState() => _TermsandConditionsState();
}

class _TermsandConditionsState extends State<TermsandConditions> {
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
                      'Terms & Condtions',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13,),

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/terms.jpg',width: 400,),
        ),
  ],
),
SizedBox(height:100 ,),













 ])  ) );
  }
}