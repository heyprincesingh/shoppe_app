import 'package:flutter/material.dart';

class shoppingCart extends StatelessWidget {
  const shoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFfff79e72),
        title: Text('Cart'),
        actions: [
          Row(children: [
            Padding(
              padding: EdgeInsets.only(left: 50, right: 2),
            )
          ])
        ],
      ),
      body: Center(child: Padding(
        padding: EdgeInsets.all(140),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/cart.png",color: Colors.black54,),
            Padding(
              padding: const EdgeInsets.only(top:12),
              child: Text("Cart is empty",style: TextStyle(color: Colors.black54,fontSize: 16),),
            )
          ],
        )
      )),
    );
  }
}
