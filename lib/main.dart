import 'package:expreal/Application/Home/home_bloc.dart';
import 'package:expreal/Presentation/Home/bottom_navbar.dart';
import 'package:expreal/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Expereal',
        theme: ThemeData(
          bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: whiteClr,
            titleTextStyle: TextStyle(
                color: blackClr, fontWeight: FontWeight.bold, fontSize: 25),
            iconTheme: IconThemeData(color: greyColor),
          ),
          primarySwatch: Colors.blue,
        ),
        home:  BottomNavBar(),
      ),
    );
  }
}
