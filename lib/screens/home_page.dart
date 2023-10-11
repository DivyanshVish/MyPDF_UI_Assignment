import 'package:flutter/material.dart';
import 'package:mypdf_ui/btns_home_screen.dart';
import 'package:mypdf_ui/btns_home_screen.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My PDF',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1d2951),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
          child: NewBtn(),
        ),
      ),
    );
  }
}
