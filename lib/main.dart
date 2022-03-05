import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/binding/all_controller_binding.dart';
import 'screens/home/home_screen.dart';
import 'constant.dart';
import 'screens/detail/detail_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AllControllerBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor:kPRimaryColor,
        backgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Cinzel',
          bodyColor: kTextColor,
        )
      ),
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/detail_screen',page:()=>DetailScreen(),transition: Transition.circularReveal)
      ],
    );
  }
}

