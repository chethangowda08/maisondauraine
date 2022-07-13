import 'package:assignment1/tabs/animation_screen.dart';
import 'package:assignment1/tabs/home_page/homepage.dart';
import 'package:assignment1/tabs/setting_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.list),
                  text: "ListingScreen",
                ),
                Tab(
                  icon: Icon(Icons.animation),
                  text: "Animation Screen",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Settings",
                ),
              ],
            ), // TabBar
            title: const Text('Home Screen'),
          ), // AppBar
          body: const TabBarView(
            children: [
              MyHomePage(),
              AnimationScreen(),
              SettingScreen(),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}
