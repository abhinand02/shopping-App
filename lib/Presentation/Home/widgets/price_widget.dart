import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '₹150 ',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: '₹ 300 ',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const Text(
          'Save 50%',
          style: TextStyle(color: Colors.green),
        )
      ],
    );
  }
}