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
        backgroundColor: Color(0xFFfff79e72),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 5, right: 150, top: 17),
            child: Text(
              'Message',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Container(
              height: 50,
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
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: index == 0 ? Colors.black54 : Colors.black12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/user.jpeg'),
                                  radius: 25,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(10, 5, 50, 3),
                                    child: Text(
                                      'alice',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    '   hiii',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.white70),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.check_sharp,
                                color: Colors.white,
                                size: 14,
                              ),
                              Text(
                                '09:05 AM',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          )
                        ],
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
