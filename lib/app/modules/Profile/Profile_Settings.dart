import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: Container(
      height: 100,

        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60)
          )
          
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index)=>setState(() 
          =>  this.index=index
          ),
            backgroundColor: Color.fromARGB(255, 165, 115, 115),
            height: 100,
            destinations: [
              NavigationDestination(
                icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 218, 235, 250),
                    ),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.home,
                      color: Colors.blue[800],
                    )),
                //selectedIcon: Icon( Icons.home,),
                label: '',
              ),
            
              NavigationDestination(
                icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 218, 235, 250),
                    ),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.calendar_month,
                      color: Colors.blue[800],
                    )),
                //selectedIcon: Icon( Icons.home,color: Colors.blue[800],),
                label: '',
              ),
              NavigationDestination(
                icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 218, 235, 250),
                    ),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.list,
                      color: Colors.blue[800],
                    )),
                //selectedIcon: Icon( Icons.home,color: Colors.blue[800],),
                label: '',
              ),
              Padding(
                padding: const EdgeInsets.only(right:15),
                child: NavigationDestination(
                  icon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 218, 235, 250),
                      ),
                      height: 40,
                      width: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Icon(
                              Icons.person_3_sharp,
                              color: Colors.blue[800],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text('Profile',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          )
                        ],
                      )),
                  //selectedIcon: Icon( Icons.home,color: Colors.blue[800],),
                  label: '',
                ),
              ),
            ]),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/app-logo.png',
                      width: 50,
                      height: 59,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[300],
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.blue[800],
                      ),
                      width: 48,
                      height: 48,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromARGB(255, 187, 96, 63),
                      backgroundImage: AssetImage('assets/icons/profile.png'),
                    ),
                    CircleAvatar(
                        radius: 10,
                 backgroundColor: Colors.blue[900],
                         child: Icon(Icons.edit,
                         size: 10,
                         
                         ),

                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Text(
                      'Adam Smith',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'adam.smith123@youdomain.com',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'indonesia',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 20,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                    ),
                    child: Icon(
                      Icons.notifications_sharp,
                      color: Colors.blue[800],
                    ),
                    width: 48,
                    height: 48,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.blue[800],
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
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                    ),
                    child: Icon(
                      Icons.lock,
                      color: Colors.blue[800],
                    ),
                    width: 48,
                    height: 48,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Security',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.blue[800],
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
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                    ),
                    child: Icon(
                      Icons.remove_red_eye,
                      color: Colors.blue[800],
                    ),
                    width: 48,
                    height: 48,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Appearance',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.blue[800],
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
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                    ),
                    child: Icon(
                      Icons.info_rounded,
                      color: Colors.blue[800],
                    ),
                    width: 48,
                    height: 48,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'HELP',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.blue[800],
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
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                    ),
                    child: Icon(
                      Icons.supervised_user_circle_outlined,
                      color: Colors.blue[800],
                    ),
                    width: 48,
                    height: 48,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Invite Friends',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.blue[800],
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
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 233, 169, 169),
                    ),
                    child: Icon(
                      Icons.login_rounded,
                      color: Color.fromARGB(255, 199, 16, 40),
                    ),
                    width: 48,
                    height: 48,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
