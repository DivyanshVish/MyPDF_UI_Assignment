import 'package:flutter/material.dart';

class MyDoc extends StatelessWidget {
  const MyDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.home),
          )
        ],
        title: const Text(
          'Your Documents',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1d2951),
      ),
      body: const Center(
        child: Text('Your Documents'),
      ),
    );
  }
}
