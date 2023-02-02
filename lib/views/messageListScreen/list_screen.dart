import 'package:flutter/material.dart';

class msglist extends StatefulWidget {
  const msglist({Key? key}) : super(key: key);

  @override
  State<msglist> createState() => _msglistState();
}

class _msglistState extends State<msglist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {},
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Color(0xFFfff79e72),
        title: Text('Chats'),
        actions: [ Row(
            children: [Padding(
              padding: EdgeInsets.only(left: 50, right: 2),
            )
            ]
        )
        ],

      ),

      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 80,
            padding: EdgeInsets.only(right: 7),
            child:
              Card(
                 child:ListTile(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                   ),
                   tileColor: Colors.grey,
                   leading:
                   CircleAvatar
                  (
                  backgroundImage: AssetImage('assets/user.jpeg'),
                  radius: 25,
                   ),
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                         Padding(
                           padding: const EdgeInsets.only(bottom: 10),
                           child: Text('Alice',),
                         ),
                      ],
                    ),
                    trailing: IconButton(onPressed: (){},
                     icon: Icon(Icons.camera_alt_outlined,size: 35,),),
              ),
                margin: EdgeInsets.only(top: 10),

              ),
          );

        },
      ),
      bottomNavigationBar: Container(height: 8,),
    );
  }
}
