import 'package:cancer_chat/app/modules/Profile/profilesettings/Invite_page.dart';
import 'package:cancer_chat/app/modules/Profile/profilesettings/Notification.dart';
import 'package:cancer_chat/app/modules/Profile/profilesettings/SecurityPage.dart';
import 'package:cancer_chat/app/modules/homepage.dart/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../core/theme/colors.dart';
import 'helppage/HelpPage.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
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
              height: 12,
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
                      radius: 20,
                      backgroundColor: Colors.blue[900],
                      child: Icon(
                        Icons.edit,
                        size: 20,
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
                  child: MaterialButton(
                    minWidth: 6,
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.blue[800],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotifiPage()));
                    },
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
                  child: MaterialButton(
                    minWidth: 6,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecurityPage()));
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
                  padding: const EdgeInsets.only(right: 28),
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
                  child: MaterialButton(
                    minWidth: 6,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HelpPage()));
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
                  child: MaterialButton(
                    minWidth: 6,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InvitePsge()));
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
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 233, 169, 169),
                    ),
                    // ignore: sort_child_properties_last
                    child: MaterialButton(
                      onPressed: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.vertical(
                                  top: Radius.circular(30))),
                          context: context,
                          builder: (context) => SingleChildScrollView(
                            child: Container(
                              width: 300,
                              height: 230,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.login_rounded,
                                    color: Colors.blue,
                                    size: 35,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text('Are you sure you want to logout?'),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.blue,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(25),
                                              )),
                                          child: Material(
                                            elevation: 5,
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            child: MaterialButton(
                                              onPressed: () {},
                                              minWidth: 150,
                                              height: 42,
                                              child: Text(
                                                'Cancel',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Material(
                                          elevation: 5,
                                          color: Colors.blue[700],
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: MaterialButton(
                                            onPressed: () {},
                                            minWidth: 150,
                                            height: 42,
                                            child: Text(
                                              'Yes, Logout',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.login_rounded,
                        color: Color.fromARGB(255, 199, 16, 40),
                      ),
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
