import 'package:flutter/material.dart';
import 'package:protrack_project/device_status/detials_page.dart';

class OfflineDevice extends StatefulWidget {
  const OfflineDevice({Key? key}) : super(key: key);

  @override
  State<OfflineDevice> createState() => _OfflineDeviceState();
}

class _OfflineDeviceState extends State<OfflineDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildListView(context),
    );
  }
  ListView _buildListView(BuildContext context){
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (_, index){
          return ListTile(
            title: Text("Dhaka M - 1290 $index"),
            subtitle: Text("Offline about: 2 hrs 47 min 23 sec"),
            leading: Icon(Icons.car_crash_rounded, color: Colors.redAccent,),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (c) => DetailsPage(index)));
            },
          );
        });
  }
}
