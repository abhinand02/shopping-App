import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Application/Home/home_bloc.dart';
import '../../../constants/constants.dart';

class ItemEditButton extends StatelessWidget {
  const ItemEditButton({
    super.key,
    required this.index,
  });

  final index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .55,
      child: Row(
        children: [
          const Spacer(),
          Container(
            // height: 40,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(30)),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Row(children: [
                  IconButton(
                      padding: EdgeInsets.zero,
                      splashRadius: 15,
                      constraints:
                          const BoxConstraints(minWidth: 30, minHeight: 34),
                      onPressed: () {
                        countList = [...state.itemcount];
                        var n = countList[index];
                        countList[index] = n - 1;
                        if (countList[index] == 0) {
                          indexList.remove(index);
                        }
                        // print(countList);
                        BlocProvider.of<HomeBloc>(context).add(
                          AddItems(
                            updatedList: countList,
                            isVisible: countList.reduce((a, b) => a + b) == 0
                                ? false
                                : true,
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 15,
                      )),
                  Text(state.itemcount[index].toString()),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints:
                        const BoxConstraints(minWidth: 30, minHeight: 34),
                    splashRadius: 15,
                    onPressed: () {
                      countList = [...state.itemcount];
                      var n = countList[index];
                      countList[index] = n + 1;
                      // print(countList);
                      BlocProvider.of<HomeBloc>(context).add(
                        AddItems(updatedList: countList, isVisible: true),
                      );
                    },
                    icon: const Icon(
                      Icons.add,
                      size: 15,
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