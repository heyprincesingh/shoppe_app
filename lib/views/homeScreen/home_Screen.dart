import 'package:flutter/material.dart';
import 'package:shoppe/views/messageListScreen/list_screen.dart';

class home_Screen extends StatelessWidget {
  const home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff79e72),
        title: Container(
          height: 23,
          child: Image.asset(
            "assets/Shoppe Logo.png",
            fit: BoxFit.cover,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => msglist())),
            child: Icon(
              Icons.chat_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
          SizedBox(width: 15),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 25,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.5),
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return GridTile(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width / 2 - 20,
                decoration: BoxDecoration(
                    color: Color(0xfff79e72),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image.network(
                                "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg",
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          decoration: BoxDecoration(
                              color: Color(0xfff79e72),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Ock Love Women's Removable Hooded Faux Leather Moto Biker Jacket",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 12),
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 2,
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "₹ 799",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.share_rounded,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
