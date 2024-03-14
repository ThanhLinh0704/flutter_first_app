import 'package:first_app/screen/hello_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../features/news/screen/NewsScreen.dart';
import '../features/user_profile/screen/UserProfileScreen.dart';



class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  _MobieLayoutState createState() => _MobieLayoutState();

}

class _MobieLayoutState extends State<MobileLayout> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: OnPageChange,
        children: List.generate(3, (index) => index == 0 ? const HelloScreen() : index == 1 ?  const NewsScreen() : const UserProfileScreen()),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                _pageController.jumpToPage(0);
              },
              icon: const Icon(Icons.home_rounded),
            ),
            IconButton(
              onPressed: () {
                _pageController.jumpToPage(1);
              },
              icon: const Icon(Icons.newspaper),
            ),
            IconButton(
              onPressed: () {
                _pageController.jumpToPage(2);
              },
              icon: const Icon(Icons.person),
            ),
          ],
        ),
      )

    );
  }

  void OnPageChange(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  void dispose() {
    super.dispose();

  }

  @override
  void initState() {
    super.initState();
  }


}

