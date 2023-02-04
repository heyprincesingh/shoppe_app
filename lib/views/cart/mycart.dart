import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mycart extends StatefulWidget {
  const mycart({Key? key}) : super(key: key);

  @override
  State<mycart> createState() => _mycartState();
}

class _mycartState extends State<mycart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'My Cart',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              FontAwesomeIcons.userPlus,
              color: Colors.black,
              size: 20,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 1.2,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 15, right: 25),
                        child: Container(
                          height: 183,
                          width: 180,
                          decoration: BoxDecoration(
                              image: new DecorationImage(
                                  image: AssetImage('assets/user.jpeg'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 5, right: 2),
                        child: Container(
                          height: 150,
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Text('Casual tees'),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Size: M'),
                              SizedBox(
                                height: 10,
                              ),
                              Text("45.58"),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  //SizedBox(width: ,),
                                  Icon(
                                    Icons.add_box_outlined,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('1'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.indeterminate_check_box_outlined,
                                      size: 25),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(Icons.cancel_outlined)
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              )),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              color: Colors.white70,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2, left: 15, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'Promo/Student Code or Voucher',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 15, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'Sub Total',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          width: 193,
                        ),
                        Text(
                          '489',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 15, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'shipping',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          width: 210,
                        ),
                        Text(
                          '25',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 15, right: 20),
                    child: Row(
                      children: [
                        Text(
                          ' Total',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          width: 222,
                        ),
                        Text(
                          '514',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 20),
                    child: Container(
                      height: 50,
                      width: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black),
                      child: Center(
                          child: Text(
                        'Checkout',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
