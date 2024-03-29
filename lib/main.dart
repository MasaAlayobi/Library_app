import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:novels_app/Core/Config/get_it.dart';
import 'package:novels_app/Core/Config/observe.dart';
import 'package:novels_app/Core/Resourse/color_app.dart';
import 'package:novels_app/feature/Auth/Home/view/home_page.dart';
import 'package:novels_app/feature/Auth/StartPages/Initial_page.dart';
import 'package:novels_app/feature/Auth/StartPages/onboard1.dart';
import 'package:novels_app/feature/Auth/StartPages/onboard2.dart';
import 'package:novels_app/feature/Auth/StartPages/onboard3.dart';
import 'package:novels_app/feature/Auth/detailsBook/details_book.dart';


void main() {
  setup();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    PageController controller=PageController();
    return MaterialApp(
      
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
         fillColor: appColor.secondaryColor
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:
        HomePage()
          // DetailsBooks(),
      //  PageView.builder(
       
      //  itemCount: pages.length,
      //   controller: controller,
      //   itemBuilder: (context, index ) => pages[index],
      //  ),
    );
  }
}
List pages=[onboard1(),onborad2(),ondoard3()];

