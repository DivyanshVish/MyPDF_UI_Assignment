import 'package:flutter/material.dart';

class CropImageToPDF extends StatelessWidget {
  const CropImageToPDF({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.home)),
          )
        ],
        title: const Text(
          'Crop Pdf To Image',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1d2951),
      ),
      body: const Center(
        child: Text('Crop Image to PDF'),
      ),
    );
  }
}
