import 'package:flutter/material.dart';
import 'package:shoppe/views/chatScreen/chatPage.dart';

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
        backwardsCompatibility: false,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 5, right: 150, top: 17),
            child: Text(
              'Message',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black,fontFamily: "ubuntu"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black26),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      // controller: _search,
                      decoration: InputDecoration(
                          hintText: ('Search'),
                          hintStyle: TextStyle(color: Colors.white70),
                          border: UnderlineInputBorder()),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => ChatPage())),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: index == 0 ? Colors.black12 : Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/user.jpeg'),
                                    radius: 25,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 50, 3),
                                      child: Text(
                                        'Alice',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: index != 0 ? Colors.black : Colors.white),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '   hiii • ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontStyle: FontStyle.italic,
                                              color: index != 0 ? Colors.black45 : Colors.white70),
                                        ),
                                        Text(
                                          '09:05 AM',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: index != 0 ? Colors.black45 : Colors.white70,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: index != 0 ? Icon(
                                Icons.check_sharp,
                                color: index != 0 ? Colors.black45 : Colors.white70,
                                size: 14,
                              ) : null,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
