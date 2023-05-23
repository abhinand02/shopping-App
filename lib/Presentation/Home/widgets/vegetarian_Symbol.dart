import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class VegetarianSymbol extends StatelessWidget {
  const VegetarianSymbol({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 10),
      padding: const EdgeInsets.fromLTRB(7, 3, 7, 3),
      decoration: BoxDecoration(
          border: Border.all(
            width: .1,
            color: blackClr,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: const [
              Icon(
                Icons.crop_square_sharp,
                color: Colors.green,
                size: 19,
              ),
              Icon(Icons.circle, color: Colors.green, size: 8),
            ],
          ),
          Text(
            '  Vegetarian',
            style: TextStyle(fontSize: 12, color: blackClr),
          ),
        ],
      ),
    );
  }
}
