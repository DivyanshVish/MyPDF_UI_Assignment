import 'package:flutter/material.dart';
import 'package:mypdf_ui/screens/btn_screens/crop_image.dart';
import 'package:mypdf_ui/screens/btn_screens/crop_pdf_to_image.dart';
import 'package:mypdf_ui/screens/btn_screens/img_to_pdf.dart';
import 'package:mypdf_ui/screens/btn_screens/my_doc.dart';
import 'package:mypdf_ui/screens/btn_screens/pdf_to_image.dart';
import 'package:mypdf_ui/screens/btn_screens/setting.dart';

import 'widgets/button_widget.dart';

class NewBtn extends StatelessWidget {
  const NewBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AllBtn(
                tag: '1',
                iconData: Icons.picture_as_pdf,
                txt: 'Image To PDF',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ImageToPDF(),
                    ),
                  );
                },
              ),
              AllBtn(
                tag: '2',
                iconData: Icons.crop,
                txt: 'Crop Image',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CropImage(),
                    ),
                  );
                },
              ),
              AllBtn(
                tag: '3',
                iconData: Icons.edit_document,
                txt: 'Pdf To Image',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PDFToImage(),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AllBtn(
                tag: '5',
                iconData: Icons.crop,
                txt: 'Crop Pdf',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CropImageToPDF(),
                    ),
                  );
                },
              ),
              AllBtn(
                tag: '6',
                iconData: Icons.library_books,
                txt: 'My Doc',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyDoc(),
                    ),
                  );
                },
              ),
              AllBtn(
                tag: '7',
                iconData: Icons.miscellaneous_services,
                txt: 'Setting',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Setting(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
