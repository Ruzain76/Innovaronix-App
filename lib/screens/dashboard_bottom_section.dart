import 'package:flutter/material.dart';

class BottomSection extends StatefulWidget {
  const BottomSection({super.key});

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        _buildBottomNavigationBarItem(
          icon: Icons.home,
          label: 'Home',
          index: 0,
        ),
        _buildBottomNavigationBarItem(
          icon: Icons.flash_on,
          label: 'Quick Action',
          index: 1,
        ),
        _buildBottomNavigationBarItem(
          icon: Icons.chat,
          label: 'Recent Discussion',
          index: 2,
        ),
        _buildBottomNavigationBarItem(
          icon: Icons.help_outline,
          label: 'Need Help',
          index: 3,
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      elevation: 8,
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final bool isSelected = _selectedIndex == index;

    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.black : const Color(0xFFA8A8A8),
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.black : const Color(0xFFA8A8A8),
              fontSize: 12,
            ),
          ),
        ],
      ),
      label: '',
    );
  }
}