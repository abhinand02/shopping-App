import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          height: 135,
          decoration: BoxDecoration(
              color: cardBgColor, borderRadius: BorderRadius.circular(15)),
          width: MediaQuery.of(context).size.width * .35,
          child: Image.asset('assets/images/item.png'),
        ),
        Positioned(
          top: 8,
          right: 20,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            decoration: BoxDecoration(
                color: whiteClr,
                border: Border.all(width: .5),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: const [
                Icon(
                  Icons.favorite_border_rounded,
                  size: 15,
                ),
                Text(
                  ' 20',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}