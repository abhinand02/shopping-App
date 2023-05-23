import 'package:expreal/Application/Home/home_bloc.dart';
import 'package:expreal/Presentation/Home/widgets/item_details_card.dart';
import 'package:expreal/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import '../Cart/cart_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<HomeBloc>(context).add(
          HomeEvent.addItems(
              updatedList: List<int>.filled(15, 0, growable: true),
              isVisible: false),
        );
      },
    );
    return Scaffold(
      backgroundColor: cardBgColor,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Iconsax.menu)),
        title: const Text('ExpeReal'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        color: whiteClr,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const Divider(
                      thickness: 2,
                      endIndent: 15,
                      indent: 15,
                    );
                  },
                  itemBuilder: (context, index) {
                    return ItemDetailsCard(
                      index: index,
                    );
                  },
                  itemCount: 15)
            ],
          ),
        ),
      ),
      bottomSheet: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.isVisible
              ? Container(
                  height: 80,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${state.itemcount.reduce((a, b) => a + b)} Item',
                        style: TextStyle(
                            fontSize: 17,
                            color: whiteClr,
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton.icon(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const CartScreen()));
                          },
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: whiteClr,
                          ),
                          label: Text(
                            'View Cart',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: whiteClr),
                          ))
                    ],
                  ),
                )
              : const SizedBox();
        },
      ),
    );
  }
}


