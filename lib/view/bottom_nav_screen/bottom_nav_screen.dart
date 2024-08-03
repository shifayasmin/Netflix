import 'package:flutter/material.dart';
import 'package:netflix/utils/constants/color_constants.dart';
import 'package:netflix/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix/view/home_screen/home_screen.dart';
import 'package:netflix/view/search_screen/search_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  List screensList = [
    HomeScreen(),
    SearchScreen(movieList: [],),
    ComingSoonScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
  ];
  int selecteIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: screensList[selecteIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selecteIndex,
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10),
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: ColorConstants.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded),
              label: "Coming Soon"),
          BottomNavigationBarItem(
              icon: Icon(Icons.download), label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
        onTap: (value) {
          selecteIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
