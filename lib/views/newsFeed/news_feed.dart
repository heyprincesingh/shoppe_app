import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppe/views/homeScreen/productDetails.dart';

Color _iconcolor = Colors.white70;

List images = [
  "https://cdn.cliqueinc.com/posts/78541/fashion-trends-short-women-should-avoid-2014-78541-1586196827385-main.700x0c.jpg",
  "https://img.freepik.com/premium-photo/fashion-model-outdoor-portrait-tourist-woman-enjoying-sightseeing-lviv-girl-looking-ancient-atchitecture_106029-855.jpg?w=2000",
  "https://img.freepik.com/free-photo/blonde-girl-is-looking-up-by-sitting-bench-stone-background_176474-120076.jpg?w=2000",
  "https://img.freepik.com/free-photo/expressive-young-girl-posing_176474-98065.jpg",
  "https://cdn.cliqueinc.com/posts/280785/japanese-clothing-brands-280785-1561561502592-fb.700x0c.jpg"
];

class news extends StatefulWidget {
  const news({Key? key}) : super(key: key);

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Feed',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 2, right: 2),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      color: Colors.black26,
                    ),
                    height: 50,
                    //color: Colors.grey,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/user.jpeg'),
                            radius: 20,
                          ),
                        ),
                        Text('Alice',
                          style: TextStyle(
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2,right: 2),
                  child: Flexible(
                    fit: FlexFit.loose,
                    child: Image(
                      image: NetworkImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5, left: 2, right: 2),
                  child: Container(
                    //color: Colors.grey,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Colors.black26,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _iconcolor = Colors.red;
                              });
                            },
                            icon: Icon(
                              FontAwesomeIcons.heart,
                              color: _iconcolor,
                            )),
                        Text('14k'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                        ),
                        IconButton(
                            onPressed: ()=>Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => ProductDetails(link: images[index]),
                              ),
                            ), icon: Icon(Icons.shopping_bag)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
