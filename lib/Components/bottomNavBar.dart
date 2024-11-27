import 'package:crowd_link/pages/explorePage.dart';
import 'package:crowd_link/pages/homePage.dart';
import 'package:crowd_link/pages/profilePage.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final Size size;
  final String currentPage;

  const BottomNavBar({
    required this.size,
    required this.currentPage,
    // Key? key,
  }); //: super(key: key);

  @override
  Widget build(BuildContext context) {
    double barWidth = size.width / 1.6;
    double barHeight = size.height / 12;

    return Container(
      margin: EdgeInsets.only(left: size.width / 15),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: barWidth,
            height: barHeight,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Home Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: BottomNavPageIcon(
                    barWidth: barWidth,
                    barHeight: barHeight,
                    isSelected: currentPage == 'HomePage', // Highlight Home
                    icon: Icons.home_outlined,
                  ),
                ),
                // Explore Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExplorePage()),
                    );
                  },
                  child: BottomNavPageIcon(
                    barWidth: barWidth,
                    barHeight: barHeight,
                    isSelected: currentPage == 'ExplorePage', // Highlight Explore
                    icon: Icons.search,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Redirect to Activity Page
                  },
                  child: BottomNavPageIcon(
                    barWidth: barWidth,
                    barHeight: barHeight,
                    isSelected: currentPage == 'ActivityPage', // Highlight Explore
                    icon: Icons.monitor_heart,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child: BottomNavPageIcon(
                    barWidth: barWidth,
                    barHeight: barHeight,
                    isSelected: currentPage == 'ProfilePage', // Highlight Explore
                    icon: Icons.account_circle_outlined,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavPageIcon extends StatelessWidget {
  final double barWidth;
  final double barHeight;
  final bool isSelected;
  final IconData icon;

  const BottomNavPageIcon({
    required this.barWidth,
    required this.barHeight,
    required this.isSelected,
    required this.icon,
    // Key? key,
  }); //: super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: barWidth / 4.6,
      height: barHeight,
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF66CC99) : Colors.transparent,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        icon,
        color: isSelected ? Colors.black : const Color(0xFFD6D3D3),
        size: barHeight / 2.4,
      ),
    );
  }
}
