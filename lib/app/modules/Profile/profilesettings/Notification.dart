
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../../../core/theme/colors.dart';
import '../Profile_Settings.dart';

class NotifiPage extends StatefulWidget {

  const NotifiPage({super.key});

  @override
  State<NotifiPage> createState() => _NotifiPageState();
}

class _NotifiPageState extends State<NotifiPage> {
  
   var  _isSound=false;
 var _isVibrate=false;
 var _isnewtips=true;
 var _isnewservices=true;

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
                    'Notification',
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
                
                title: Text('Sound',
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
              ),
                value: _isSound,
                 onChanged: (newvalue){
                  setState(() {
                    _isSound=newvalue;
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
                
                title: Text('Vibrate',
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
              ),
                value: _isVibrate,
                 onChanged: (newvalue){
                  setState(() {
                    _isVibrate=newvalue;
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
                
                title: Text('New tips available',
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
              ),
                value: _isnewtips,
                 onChanged: (newvalue){
                  setState(() {
                    _isnewtips=newvalue;
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
                
                title: Text('New serivice available',
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
              ),
                value: _isnewservices,
                 onChanged: (newvalue){
                  setState(() {
                    _isnewservices=newvalue;
                  });
                 })
            ],
          )
        ],
      ),

    );
  }
}