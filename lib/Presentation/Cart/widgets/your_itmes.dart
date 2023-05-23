import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class YourItems extends StatelessWidget {
  const YourItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteClr,
      margin: const EdgeInsets.only(
        top: 5,
      ),
      padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'YOUR ITEMS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'Clear All',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: blueColor),
            )
          ],
        ),
        const SizedBox(height: 5,),
        const Divider(
          thickness: .5,
        )
      ]),
    );
  }
}