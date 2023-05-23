import 'package:expreal/Presentation/Cart/widgets/billing_summey_widget.dart';
import 'package:expreal/Presentation/Cart/widgets/cart_items.dart';
import 'package:expreal/Presentation/Cart/widgets/place_order_button.dart';
import 'package:expreal/Presentation/Cart/widgets/your_itmes.dart';
import 'package:expreal/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Application/Home/home_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardBgColor,
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.itemcount.reduce((a, b) => a + b) == 0) {
         return   Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Cart is Empty', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                TextButton(
                  child: const Text('Order Items'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),);
          }
          return ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              const YourItems(),
              Container(
                color: whiteClr,
                // height: MediaQuery.of(context).size.height * .35,
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    var count = 0;
                    state.itemcount.forEach((element) {
                      element != 0 ? count++ : '';
                    });
                    // print(count);
                    return ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return CartItems(
                            index: index,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            indent: MediaQuery.of(context).size.width * .24,
                            thickness: 1,
                          );
                        },
                        itemCount: count);
                  },
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  BillingSummaryWidget(),
                ],
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: const PlaceOrderButton(),
    );
  }
}
