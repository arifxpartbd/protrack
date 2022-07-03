import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("User Profile"),
      // ),
      body: SingleChildScrollView(
        //crossAxisAlignment: CrossAxisAlignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                //overflow:Overflow.visible,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/arifimage.jpeg"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -5,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: Colors.white)
                        ),
                        color: Color(0xFFF5F6F9),
                        onPressed: (){},
                        child: Icon(Icons.add_a_photo),),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                color: Color(0xFFF5F6F9),
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 20,),
                    Expanded(child: Text("Khan Arif",
                      style: TextStyle(
                        fontFamily: "Jost-SemiBold.ttf",
                      ),
                    ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_forward_ios),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                color: Color(0xFFF5F6F9),
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.list_alt_outlined),
                    SizedBox(width: 20,),
                    Expanded(child: Text("Schedule for report",
                      style: TextStyle(
                        fontFamily: "Jost-SemiBold.ttf",
                      ),
                    ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_forward_ios),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                color: Color(0xFFF5F6F9),
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 20,),
                    Expanded(child: Text("Generated report",
                      style: TextStyle(
                        fontFamily: "Jost-SemiBold.ttf",
                      ),
                    ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_forward_ios),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                color: Color(0xFFF5F6F9),
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.map_outlined),
                    SizedBox(width: 20,),
                    Expanded(child: Text("Geo-fence",
                      style: TextStyle(
                        fontFamily: "Jost-SemiBold.ttf",
                      ),
                    ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_forward_ios),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                color: Color(0xFFF5F6F9),
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.map),
                    SizedBox(width: 20,),
                    Expanded(child: Text("POI",
                      style: TextStyle(
                        fontFamily: "Jost-SemiBold.ttf",
                      ),
                    ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_forward_ios),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                color: Color(0xFFF5F6F9),
                onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.support_agent),
                    SizedBox(width: 20,),
                    Expanded(child: Text("Support",
                      style: TextStyle(
                        fontFamily: "Jost-SemiBold.ttf",
                      ),
                    ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_forward_ios),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
