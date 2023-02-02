import 'package:flutter/material.dart';
import 'package:shoppe/views/homeScreen/home_Screen.dart';

class logo_Screen extends StatefulWidget {
  const logo_Screen({Key? key}) : super(key: key);

  @override
  State<logo_Screen> createState() => _logo_ScreenState();
}

class _logo_ScreenState extends State<logo_Screen> {
  @override
  void initState() {
    intro();
    super.initState();
  }

  void intro() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context,
        MaterialPageRoute(
            builder: (BuildContext context) => home_Screen()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xfff79e72),
          child: Padding(
            padding: const EdgeInsets.all(90),
            child: Image.asset("assets/Shoppe Logo.png"),
          ),
        ),
      ),
    );
  }
}
