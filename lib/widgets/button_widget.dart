import 'package:flutter/material.dart';

class AllBtn extends StatelessWidget {
  const AllBtn(
      {super.key,
      required this.onTap,
      required this.iconData,
      required this.txt,
      required this.tag});

  final VoidCallback onTap;
  final String txt;
  final IconData iconData;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: 64,
              width: 64,
              child: FloatingActionButton(
                heroTag: tag,
                backgroundColor: Colors.grey[300],
                elevation: 0,
                onPressed: onTap,
                child: Icon(
                  iconData,
                  size: 28,
                  color: const Color(0xff1d2951),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              txt,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
