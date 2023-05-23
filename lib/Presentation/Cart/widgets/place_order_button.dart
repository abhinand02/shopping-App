import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Application/Home/home_bloc.dart';
import '../../../constants/constants.dart';

class PlaceOrderButton extends StatelessWidget {
  const PlaceOrderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final amount = (state.itemcount.reduce((a, b) => a+b) * 1287.05).toStringAsFixed(2);
          final gst = (double.parse(amount) * .1).round();
        if (state.itemcount.reduce((a, b) => a+b)== 0) {
          return Container(height: .1,);
        }
        return Container(
          height: 80,
          color: whiteClr,
          margin: const EdgeInsets.only(top: 4),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: blueColor,
                      padding: const EdgeInsets.symmetric(vertical: 15)),
                  child: Text('Place Order ₹${(double.parse(amount) + gst - 100 - 40).toString()}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
