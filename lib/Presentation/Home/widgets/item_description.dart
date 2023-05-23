import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class ItemDescription extends StatelessWidget {
  const ItemDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width * .55,
      child: Text(
        'Big Mac®, Coca-Cola (Medium), Medium French Fries',
        style: TextStyle(color: greyColor),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
      ),
    );
  }
}