import 'package:compiler/screens/homescreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<HomeScreenController>(context, listen: false).categoryList();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenController>(
      builder: (BuildContext context, homeScreenController, Widget? child) {
        return Scaffold(
          body: ListView.builder(
            itemCount:
                homeScreenController.languageListModel?.course.data.length,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                width: 200,
                color: Colors.grey,
                child: Text(
                  homeScreenController
                          .languageListModel?.course.data[index].courseName ??
                      "asa",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
