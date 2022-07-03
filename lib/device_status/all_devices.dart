import 'package:flutter/material.dart';
import 'package:protrack_project/device_status/detials_page.dart';

class AllDeives extends StatefulWidget {
  const AllDeives({Key? key}) : super(key: key);

  @override
  State<AllDeives> createState() => _AllDeivesState();
}

class _AllDeivesState extends State<AllDeives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildListView(context),
    );
  }
  ListView _buildListView(BuildContext context){
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index){
      return Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
        child: Card(
            child: ListTile(
              title: Text("Dha-19-12 #$index"),
              subtitle: Text("Static (2 hrs 44 min 44 sec)"),
              leading: Icon(Icons.car_crash_rounded),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> DetailsPage(index)));
              },
            )
        ),
      );
      },
    );

  }
}
