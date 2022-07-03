import 'package:flutter/material.dart';
import 'package:protrack_project/device_status/detials_page.dart';

class OnlineActiveDevice extends StatefulWidget {
  const OnlineActiveDevice({Key? key}) : super(key: key);

  @override
  State<OnlineActiveDevice> createState() => _OnlineActiveDeviceState();
}

class _OnlineActiveDeviceState extends State<OnlineActiveDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildListView(context),
    );
  }
  ListView _buildListView(BuildContext context){
    return ListView.builder(
      itemCount: 55,
        itemBuilder: (_, index){
          return ListTile(
            title: Text("Dha-19-12 #$index"),
            subtitle: Text("Static (2 hrs 44 min 44 sec)"),
            leading: Icon(Icons.car_crash_rounded,
              color: Colors.green,),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> DetailsPage(index)));
            },
          );
        });
  }
}
