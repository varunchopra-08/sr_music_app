import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = screenWidth / 4;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Elevated BottomNavigationBar
        Material(
          elevation: 20,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.black,
              currentIndex: currentIndex,
              onTap: onTap,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/home.png',
                    width: 24,
                    color: currentIndex == 0 ? Colors.white : Colors.grey,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/news.png',
                    width: 24,
                    color: currentIndex == 1 ? Colors.white : Colors.grey,
                  ),
                  label: 'News',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/trackbox.png',
                    width: 24,
                    color: currentIndex == 2 ? Colors.white : Colors.grey,
                  ),
                  label: 'TrackBox',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/workspace.png',
                    width: 24,
                    color: currentIndex == 3 ? Colors.white : Colors.grey,
                  ),
                  label: 'Projects',
                ),
              ],
            ),
          ),
        ),

        // Animated Notch
        AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          bottom: 48, // above BottomNavigationBar
          left: (itemWidth * currentIndex) + (itemWidth / 2) - 7, // center above icon
          child: Container(
            width: 12,
            height: 18,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
