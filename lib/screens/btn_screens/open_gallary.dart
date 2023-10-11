import 'package:flutter/material.dart';

class OpenGallery extends StatelessWidget {
  const OpenGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.home)),
          )
        ],
        title: const Text(
          'Gallery will open here',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1d2951),
      ),
      body: const Center(child: Text('Open Gallery')),
    );
  }
}
