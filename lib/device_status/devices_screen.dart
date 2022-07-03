import 'package:flutter/material.dart';
import 'package:protrack_project/device_status/all_devices.dart';
import 'package:protrack_project/device_status/offline_devices.dart';
import 'package:protrack_project/device_status/online_active_device.dart';

class DevicesPage extends StatefulWidget {
  const DevicesPage({Key? key}) : super(key: key);

  @override
  State<DevicesPage> createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TabBar(
           // indicatorColor: Colors.grey,
            tabs: [
              Tab(
                child: Text("All [71]",
                  style: TextStyle(
                  color: Colors.black
                ),
                ),
                // icon: Icon(Icons.list_rounded,
                // color: Colors.black,),
              ),
              Tab(
                child: Text("Online [55]",
                  style: TextStyle(
                    color: Colors.black
                ),
                ),
                // icon: Icon(Icons.list_rounded,
                // color: Colors.black,),
              ),
              Tab(
                child: Text("Offline [20]",
                  style: TextStyle(
                    color: Colors.black
                ),
                ),
                // icon: Icon(Icons.list_rounded,
                // color: Colors.black,),
              ),
            ],
          ),
        body: TabBarView(
            children: [
              AllDeives(),
              OnlineActiveDevice(),
              OfflineDevice(),
            ],
        ),
        ),
    );
  }
}
