import 'package:cancer_chat/app/modules/Profile/helppage/HelpPage.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:expandable/expandable.dart';
import '../../../../core/theme/colors.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  bool ispressed = false;

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
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 10,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HelpPage()));
                  },
                  child: Container(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.blue[600],
                    ),
                  ),
                ),
                Text(
                  'FAQ',
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    ispressed = !ispressed;
                    setState(() {});
                  },
                  child: Container(
                    height: 37,
                    width: 100,
                   
                    decoration: BoxDecoration(
                       color: ispressed ? AppColors.white : AppColors.primary,
                        border: Border.all(
                          color:Colors.blue
                              
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'General',
                          style: TextStyle(
                            color: Colors.blue[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 37,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            AppColors.primary,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 37,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            AppColors.primary,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Account',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 37,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color:
                        AppColors.primary,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Doctor',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 37,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color:
                             AppColors.primary,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tips',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )),
              child: ExpandablePanel(
                header: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'What is DoctorQ?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                collapsed: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DoctorQ is greatest medical online consulation app',
                        style: TextStyle(
                          color: Color.fromARGB(221, 100, 98, 98),
                          fontSize: 13,
                        ),
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: Text(
                          'platform in this century',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color.fromARGB(221, 100, 98, 98),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                expanded: Text(''),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )),
              child: ExpandablePanel(
                header: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'is DoctorQ is safe for me ?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                collapsed: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DoctorQ is greatest medical online consulation app',
                        style: TextStyle(
                          color: Color.fromARGB(221, 100, 98, 98),
                          fontSize: 13,
                        ),
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: Text(
                          'platform in this century',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color.fromARGB(221, 100, 98, 98),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                expanded: Text(''),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )),
              child: ExpandablePanel(
                header: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'How to Schedule consultation on DoctorQ?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                collapsed: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DoctorQ is greatest medical online consulation app',
                        style: TextStyle(
                          color: Color.fromARGB(221, 100, 98, 98),
                          fontSize: 13,
                        ),
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: Text(
                          'platform in this century',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color.fromARGB(221, 100, 98, 98),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                expanded: Text(''),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )),
              child: ExpandablePanel(
                header: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'How to logout from DoctorQ?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                collapsed: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DoctorQ is greatest medical online consulation app',
                        style: TextStyle(
                          color: Color.fromARGB(221, 100, 98, 98),
                          fontSize: 13,
                        ),
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: Text(
                          'platform in this century',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color.fromARGB(221, 100, 98, 98),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                expanded: Text(''),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )),
              child: ExpandablePanel(
                header: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'is there a free tips to get health in this app?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                collapsed: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DoctorQ is greatest medical online consulation app',
                        style: TextStyle(
                          color: Color.fromARGB(221, 100, 98, 98),
                          fontSize: 13,
                        ),
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: Text(
                          'platform in this century',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color.fromARGB(221, 100, 98, 98),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                expanded: Text(''),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )),
              child: ExpandablePanel(
                header: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'is DoctorQ free to use?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                collapsed: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DoctorQ is greatest medical online consulation app',
                        style: TextStyle(
                          color: Color.fromARGB(221, 100, 98, 98),
                          fontSize: 13,
                        ),
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 14),
                        child: Text(
                          'platform in this century',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color.fromARGB(221, 100, 98, 98),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                expanded: Text(''),
              ),
            ),
          ),
        ])));
  }
}
