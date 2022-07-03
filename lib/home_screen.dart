import 'package:flutter/material.dart';
import 'package:protrack_project/auth_screen/user_profile.dart';
import 'package:protrack_project/device_status/devices_screen.dart';

import 'widget/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  int currentIndex = 0;
  final screens = [
    Center(child: Text("Monitor"),),
    DevicesPage(),
    Center(child: Text("Notification"),),
    // Center(child: Text("Profile"),)
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey,
                  Colors.black54,
                ],
                begin: FractionalOffset(0.0,0.0),
                end: FractionalOffset(1.0,0.0),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp,
              )
          ),
        ),
        title: const Text(
          'Protaker App',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //for animation off
        //type: BottomNavigationBarType.fixed,
        //for animatinoff
        currentIndex: currentIndex,
        fixedColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
            color: Colors.grey
        ),
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.public_rounded),
              label: 'Monitor'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted_rounded),
              label: 'Device'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message_rounded),
              label: 'Alert'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded,),
              label: "Me"
          ),
        ],


      ),
    );
  }
}
