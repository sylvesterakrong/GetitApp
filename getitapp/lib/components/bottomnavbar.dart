import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar(
      {super.key, required this.currentIndex, required this.onTap});

  final int currentIndex;
  final Function(int) onTap;

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  BottomNavigationBarItem _buildTabItem(
      IconData icon, IconData filledIcon, int index, String label) {
    return BottomNavigationBarItem(
      icon: Icon(
        widget.currentIndex == index ? filledIcon : icon,
        color: widget.currentIndex == index ? Colors.red : Colors.grey,
      ),
      label: label,
      backgroundColor: Colors.grey[850],
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(1),
          child: BottomNavigationBar(
            currentIndex: widget.currentIndex,
            onTap: widget.onTap,
            showSelectedLabels: true,
            showUnselectedLabels: true,

            //height: 60,
            backgroundColor: Colors.grey,
            //unselectedItemColor: Colors.white,
            selectedItemColor: Colors.red,
            items: [
              _buildTabItem(Icons.home, Icons.home, 0, 'Home'),
              _buildTabItem(Icons.book, Icons.book_outlined, 1, 'Novels'),
              _buildTabItem(Icons.my_library_books_sharp,
                  Icons.library_books_outlined, 2, 'My Library'),
              _buildTabItem(
                  CupertinoIcons.bag, CupertinoIcons.bag_fill, 3, 'My Store'),
            ],
          ),
        ),
      ),
    );
  }
}
