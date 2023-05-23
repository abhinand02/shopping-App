import 'package:expreal/Presentation/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import '../../Application/Home/home_bloc.dart';
import '../../constants/constants.dart';
import '../Cart/cart_screen.dart';
import 'home_screen.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final pages =  const[
    Home(),
    CartScreen(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: pages[state.bottomNavigationBarIndex],
          bottomNavigationBar: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return BottomNavigationBar(
                selectedItemColor: blueColor,
                currentIndex: state.bottomNavigationBarIndex,
                onTap: (value) {
                  BlocProvider.of<HomeBloc>(context)
                      .add(SwitchPage(index: value));
                },
                items: const [
                  BottomNavigationBarItem(icon: Icon(Iconsax.home), label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(Iconsax.shopping_cart), label: ''),
                  BottomNavigationBarItem(icon: Icon(Iconsax.user), label: '')
                ]);
          },
        ),
        );
      },
    );
  }
}
