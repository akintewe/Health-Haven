import 'package:cancer_chat/app/modules/Profile/Profile_Settings.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../../core/theme/colors.dart';
class SecurityPage extends StatefulWidget {

  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  
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
                    'Security',
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
              SwitchListTile(
                
                title: Text('Face ID',
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
              ),
                value: _faceid,
                 onChanged: (newvalue){
                  setState(() {
                    _faceid=newvalue;
                  });
                 }),
                  SizedBox(
              height: 20,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
                  SwitchListTile(
                activeTrackColor: Colors.blue,
                inactiveThumbColor: Colors.white,
                
                title: Text('Remember Me',
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
              ),
                value: _rememberme,
                 onChanged: (newvalue){
                  setState(() {
                    _rememberme=newvalue;
                  });
                 }),
                  SizedBox(
              height: 20,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
                  SwitchListTile(
                
                title: Text('Touch ID',
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
              ),
                value: _Touchid,
                 onChanged: (newvalue){
                  setState(() {
                    _Touchid=newvalue;
                  });
                 }),
               
            ],
          )
        ],
      ),

    );
  }
}