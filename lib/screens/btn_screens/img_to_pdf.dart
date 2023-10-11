import 'package:flutter/material.dart';
import 'package:mypdf_ui/screens/btn_screens/open_camra.dart';
import 'package:mypdf_ui/screens/btn_screens/open_gallary.dart';
import 'package:mypdf_ui/screens/home_page.dart';

class ImageToPDF extends StatelessWidget {
  const ImageToPDF({super.key});

//Todo:/* ---------------------  This Page Is Completed --------------------- */

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
          'Create Pdf',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff1d2951),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(elevation: const MaterialStatePropertyAll(4), fixedSize: const MaterialStatePropertyAll(Size(250, 120)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), backgroundColor: MaterialStatePropertyAll(Colors.grey[300])),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OpenGallery()));
            },
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Icon(
                    size: 60,
                    Icons.image,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Select photo from Gallery',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonStyle(elevation: const MaterialStatePropertyAll(4), fixedSize: const MaterialStatePropertyAll(Size(250, 120)), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), backgroundColor: MaterialStatePropertyAll(Colors.grey[300])),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OpenCamera()));
              },
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Icon(
                      size: 60,
                      Icons.camera_alt,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Capture photo from Camera',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  )
                ],
              ))
        ],
      )),
    );
  }
}
