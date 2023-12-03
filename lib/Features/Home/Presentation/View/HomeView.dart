import 'package:flutter/material.dart';
import 'package:store/Core/Utils/Consts.dart';
import 'package:store/Features/Home/Presentation/View/Widgets/HomeViewbody.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 206, 204, 204),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: KPrimaryColor,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.photo_camera_front_sharp),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        HOmeViewbody(),
        Container(),
        Container()
      ][currentPageIndex],
    );
  }
}
