
import 'package:flutter/material.dart';
import 'package:protrack_project/auth_screen/login_screen.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black54,
      child: ListView(
        children: [
          //header
          Container(
            padding: const EdgeInsets.only(top: 26, bottom: 12),
            child: Column(
              children: [
                //user profile image
                SizedBox(
                  height: 130,
                  width: 130,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/photos/young-boy-dressed-as-a-gentleman-with-sunglasses-picture-id465021633?k=20&m=465021633&s=612x612&w=0&h=_0KmcsyLppOaO_FKVq4e0yrCZVA3EU3ULzzVWlCzbcQ="
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //
                //user name
                Text(
                  // sharedPreferences!.getString('name')!,
                  "khan arif",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),


          //body
          Container(
            padding: const EdgeInsets.only(top: 1),
            child: Column(
              children: [
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                //home
                ListTile(
                  leading: const Icon(Icons.home,
                  color: Colors.grey,),
                  title: const Text('Home',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),
                  onTap: (){

                  },
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                //order
                ListTile(
                  leading: Icon(Icons.reorder_outlined,color: Colors.grey,),
                  title: Text('My Device',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),
                  onTap: (){

                  },
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                //search
                ListTile(
                  leading: const Icon(Icons.picture_in_picture_alt,
                    color: Colors.grey,),
                  title: const Text('Payment',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  onTap: (){

                  },
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                // not yet received orders
                ListTile(
                  leading: const Icon(Icons.timelapse,
                    color: Colors.grey,),
                  title: const Text('History',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  onTap: (){

                  },
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                // history
                ListTile(
                  leading: const Icon(Icons.search,
                    color: Colors.grey,),
                  title: const Text('Search',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  onTap: (){

                  },
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                ListTile(
                  leading: const Icon(Icons.support_agent,
                    color: Colors.grey,),
                  title: const Text('Support',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  onTap: (){

                  },
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
                // Logout
                ListTile(
                  leading: const Icon(Icons.exit_to_app,
                    color: Colors.grey,),
                  title: const Text('Log out',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  onTap: (){
                    //FirebaseAuth.instance.signOut();
                    Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
                  },
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                  thickness: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
