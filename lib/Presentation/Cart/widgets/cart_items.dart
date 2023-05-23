import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Application/Home/home_bloc.dart';
import '../../../constants/constants.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardBgColor,
        ),
        height: 50,
        width: 50,
        child: Image.asset(
          'assets/images/item.png',
          scale: 3,
        ),
      ),
      title: const Text(
        'Veggie Paradise',
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Medium, New Hand Tossed'),
          const SizedBox(
            height: 5,
          ),
          Text(
            '₹1287.05',
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: blackClr),
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            // height: 40,
            width: MediaQuery.of(context).size.width * .25,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(30)),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                indexList.sort();
                return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          splashRadius: 15,
                          constraints:
                              const BoxConstraints(minWidth: 30, minHeight: 34),
                          onPressed: () {
                            countList = [...state.itemcount];
                            if (countList[indexList[index]] == 1) {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: const Text(
                                          'Do you want to remove this item from cart'),
                                      actionsAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('No')),
                                        TextButton(
                                          onPressed: () {
                                            var n = countList[indexList[index]];
                                            countList[indexList[index]] = n - 1;
                                            if (countList[indexList[index]] ==
                                                0) {
                                              indexList.remove(indexList[index]);
                                            }
                                            // print(countList);
                                            // print(indexList);
                                            BlocProvider.of<HomeBloc>(context)
                                                .add(
                                              AddItems(
                                                updatedList: countList,
                                                isVisible: countList.reduce(
                                                            (a, b) => a + b) ==
                                                        0
                                                    ? false
                                                    : true,
                                              ),
                                            );
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Yes'),
                                        )
                                      ],
                                    );
                                  });
                            } else {
                              var n = countList[indexList[index]];
                              countList[indexList[index]] = n - 1;
                              if (countList[indexList[index]] == 0) {
                                indexList.remove(index);
                              }
                              print(countList);
                              BlocProvider.of<HomeBloc>(context).add(
                                AddItems(
                                  updatedList: countList,
                                  isVisible:
                                      countList.reduce((a, b) => a + b) == 0
                                          ? false
                                          : true,
                                ),
                              );
                            }
                          },
                          icon: Icon(
                            Icons.remove,
                            size: 20,
                            fill: 1,
                            color: blackClr,
                          )),
                      Text(state.itemcount[indexList[index]].toString()),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints:
                            const BoxConstraints(minWidth: 30, minHeight: 34),
                        splashRadius: 15,
                        onPressed: () {
                          countList = [...state.itemcount];
                      var n = countList[indexList[index]];
                      countList[indexList[index]] = n + 1;
                      print(countList);
                      BlocProvider.of<HomeBloc>(context).add(
                        AddItems(updatedList: countList, isVisible: true),
                      );
                        },
                        icon: Icon(
                          Icons.add,
                          size: 20,
                          fill: 1,
                          color: blackClr,
                        ),
                      )
                    ]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
