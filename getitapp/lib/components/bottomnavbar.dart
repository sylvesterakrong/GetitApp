import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:cupertino_icons/cupertino_icons.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar(
      {super.key, required this.currentIndex, required this.onTap});

  final int currentIndex;
  final Function(int) onTap;

  BottomNavigationBarItem _buildTabItem(
      IconData icon, IconData filledIcon, int index, String label) {
    return BottomNavigationBarItem(
      icon: Icon(
        currentIndex == index ? filledIcon : icon,
        color: currentIndex == index ? Colors.red : Colors.grey,
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.7), blurRadius: 1.0)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(3, 10, 3, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            showSelectedLabels: true, 
            showUnselectedLabels: true,
            
            //height: 60,
            backgroundColor: Colors.grey[200],
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.red,
            items: [
              _buildTabItem(Icons.home, Icons.home, 0, 'Home'),
              _buildTabItem(Icons.book, Icons.book_outlined, 1, 'Novels'),
              _buildTabItem(Icons.my_library_books_sharp, Icons.library_books_outlined, 2, 'My Library'),
              _buildTabItem(CupertinoIcons.bag, CupertinoIcons.bag_fill, 3, 'My Store'),
            ],
          ),
        ),
      ),
    );
  }
}
