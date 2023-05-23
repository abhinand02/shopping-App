import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Application/Home/home_bloc.dart';
import '../../../constants/constants.dart';

class AddButtonWidget extends StatelessWidget {
  AddButtonWidget({
    super.key,
    required this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .55,
      child: Row(
        children: [
          const Spacer(),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () {
                  if (!indexList.contains(index)) {
                    indexList.add(index);
                  }
                  // print(indexList);
                  countList = [...state.itemcount];
                  var n = countList[index];
                  countList[index] = n + 1;
                  // print(countList);
                  BlocProvider.of<HomeBloc>(context)
                      .add(AddItems(updatedList: countList, isVisible: true));
                },
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    backgroundColor: blueColor),
                child: const Text(
                  'Add',
                  style: TextStyle(fontSize: 18),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}