import 'package:compiler/screens/category_service.dart';
import 'package:compiler/screens/home_screen.dart';
import 'package:compiler/screens/homescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'onboarding_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(
        value: HomeScreenController(),
      ),
    ],
    child: MyApp(),
  ));
  CategoryService().categoryList();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
