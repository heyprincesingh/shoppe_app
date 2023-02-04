import 'package:flutter/material.dart';
import 'package:shoppe/views/cart/mycart.dart';

class ProductDetails extends StatefulWidget {
  String link;
  ProductDetails({super.key, required this.link});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Ethnic Yard',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xfff79e72),
                    size: 18,
                  ),
                  Text(
                    '  4.8',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '(2.6k review)',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: NetworkImage(widget.link),
                      fit: BoxFit.fill),
                ),
                height: 400,
                width: 320,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 20, 10),
                child: Row(
                  children: [
                    Text(
                      'Select Size',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 5, 0, 0),
                child: Row(
                  children: [
                    dressSize('S', false),
                    SizedBox(width: 8),
                    dressSize('M', false),
                    SizedBox(width: 8),
                    dressSize('L', true),
                    SizedBox(width: 8),
                    dressSize('XL', false),
                    SizedBox(width: 8),
                    dressSize('XXL', false),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 20, 10),
                child: Row(
                  children: [
                    Text(
                      'Select Color',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 5, 0, 0),
                child: Row(
                  children: [
                    dressColor(Colors.white),
                    SizedBox(width: 8),
                    dressColor(Colors.black),
                    SizedBox(width: 8),
                    dressColor(Colors.blue.shade100),
                    SizedBox(width: 8),
                    dressColor(Colors.greenAccent.shade100),
                    SizedBox(width: 8),
                    dressColor(Colors.indigo.shade100),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 45, 0, 20),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      '₹',
                      style: TextStyle(fontSize: 22, color: Color(0xfff79e72)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '5,499.00',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => mycart(),
                        ),
                      ),
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                              'Add To Cart',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container dressSize(String Size, bool Bool) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: Bool ? Color(0xfff79e72) : Colors.transparent,
          border: Border.all(color: Colors.grey.shade500),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(Size, style: TextStyle(fontSize: 15)),
      ),
    );
  }

  Container dressColor(Color dc) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: dc,
          border: Border.all(color: Colors.grey.shade500),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
