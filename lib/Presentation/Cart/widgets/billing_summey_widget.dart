import 'package:expreal/Presentation/Cart/widgets/price_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Application/Home/home_bloc.dart';
import '../../../constants/constants.dart';

class BillingSummaryWidget extends StatelessWidget {
  const BillingSummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteClr,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      margin: const EdgeInsets.only(top: 8),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          final amount = (state.itemcount.reduce((a, b) => a+b) * 1287.05).toStringAsFixed(2);
          final gst = (double.parse(amount) * .1).round();
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'BILLING SUMMARY',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, height: 2),
              ),
               PriceDetails(
                title: 'Item Total',
                amount: '₹$amount',
              ),
              const PriceDetails(
                title: 'Item Discount',
                amount: '-₹40',
              ),
              const PriceDetails(
                title: 'Coupon Discount',
                amount: '-₹100',
              ),
              ListTile(
                dense: true,
                contentPadding: const EdgeInsets.only(left: 2, top: 4),
                leading: Row(mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Tax (GST)',
                      style: TextStyle(fontSize: 18, color: greyColor),
                    ),
                  ],
                ),
                trailing: Text(gst.toString(),
                    style: TextStyle(fontSize: 18, color: greyColor)),
              ),
               ListTile(
                dense: true,
                contentPadding: const EdgeInsets.only(left: 2, top: 5),
                leading: const Text(
                  'Order Total',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                trailing: Text('₹${(double.parse(amount) + gst - 100 - 40).toString()}',
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              ),
            ],
          );
        },
      ),
    );
  }
}
