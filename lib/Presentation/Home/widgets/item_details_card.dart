import 'package:expreal/Presentation/Home/widgets/price_widget.dart';
import 'package:expreal/Presentation/Home/widgets/vegetarian_Symbol.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Application/Home/home_bloc.dart';
import '../item_image.dart';
import 'add_button.dart';
import 'item_description.dart';
import 'item_edit_button.dart';

class ItemDetailsCard extends StatelessWidget {
  const ItemDetailsCard({
    super.key,
    required this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ItemImage(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hamburger Happy Meal',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, height: 1.5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  VegetarianSymbol(),
                  ItemDescription(),
                  PriceWidget(),
                ],
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return state.itemcount[index] == 0
                      ? AddButtonWidget(
                          index: index,
                        )
                      : ItemEditButton(
                          index: index,
                        );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}