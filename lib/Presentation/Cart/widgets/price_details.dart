import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class PriceDetails extends StatelessWidget {
  const PriceDetails({
    super.key,
    required this.title,
    required this.amount,
  });

  final String title, amount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 2, top: 4),
      leading: Text(
        title,
        style: TextStyle(fontSize: 18, color: greyColor),
      ),
      trailing: Text(
        amount,
        style: TextStyle(fontSize: 18, color: greyColor),
      ),
    );
  }
}
