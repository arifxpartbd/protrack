import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {

  final int index;
  DetailsPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The details page $index'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(10),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.qr_code_outlined),
                  Text("IMEI"),
                  Text("89***************"),
                  IconButton(onPressed: ()
                  {
                    //Fluttertoast.showToast(msg: "Copy");
                  },
                      icon: Icon(Icons.copy_all_outlined)
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(onPressed: ()
                    {

                    },
                        icon: Icon(Icons.telegram_outlined)
                    ),
                    Text("Traking")
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: ()
                    {

                    },
                        icon: Icon(Icons.play_circle_outline_outlined)
                    ),
                    Text("Playback")
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: ()
                    {

                    },
                        icon: Icon(Icons.description_rounded)
                    ),
                    Text("Detail")
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: ()
                    {

                    },
                        icon: Icon(Icons.keyboard_command_key_outlined)
                    ),
                    Text("Command")
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.notifications), label: Text("Alert")
                ),
                TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.keyboard_command_key_outlined), label: Text("Command history")
                ),
                TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.display_settings_sharp), label: Text("Geo-fence")
                ),
                TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.share_outlined), label: Text("Share location")
                ),

              ],
            ),
          ),
          Container(
            child: OutlinedButton.icon(onPressed: (){},
                icon: Icon(Icons.settings),
                label: Text("Setting")),
          )
        ],
      )
    );
  }
}
