import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool isResearchExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: const Color(0xFF232323),
            padding: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('assets/images/profile_image.png'),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Mohsin Faraz',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Senior Research Associate',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              color: const Color(0xFF474747),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _expandableMenuItem(
                      'Research',
                      'assets/icons/research.svg',
                      isExpanded: isResearchExpanded,
                      onToggle: () {
                        setState(() {
                          isResearchExpanded = !isResearchExpanded;
                        });
                      },
                      children: [
                        _expandedRow(
                          'assets/icons/new_project.svg',
                          'New Project',
                        ),
                        _expandedRow(
                          'assets/icons/my_project.svg',
                          'My Project',
                        ),
                      ],
                    ),
                    _menuItem('Team', 'assets/icons/team.svg'),
                    _menuItem('Laboratory', 'assets/icons/laboratory.svg'),
                    _menuItem('Task', 'assets/icons/task.svg'),
                    _menuItem('Data', 'assets/icons/data.svg'),
                    _menuItem('Discussion', 'assets/icons/discussion.svg'),
                    _menuItem('Publish', 'assets/icons/publish.svg'),
                    _menuItem('Expense', 'assets/icons/expense.svg',
                        hasArrow: false),
                    _menuItem('Setting', 'assets/icons/setting.svg',
                        hasArrow: false),
                    _menuItem('Ticketing', 'assets/icons/ticketing.svg',
                        hasArrow: false),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: const Color(0xFF232323),
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.logout, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuItem(String title, String svgPath, {bool hasArrow = true}) {
    return ListTile(
      leading: SvgPicture.asset(
        svgPath,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        height: 22,
        width: 22,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      trailing: hasArrow
          ? const Icon(Icons.keyboard_arrow_down, color: Colors.white)
          : null,
      onTap: () {},
    );
  }

  Widget _expandableMenuItem(
    String title,
    String svgPath, {
    required bool isExpanded,
    required VoidCallback onToggle,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: SvgPicture.asset(
            svgPath,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            height: 22,
            width: 22,
          ),
          title: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          trailing: Icon(
            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
          onTap: onToggle,
        ),
        if (isExpanded)
          Container(
            color: Colors.white,
            child: Column(children: children),
          ),
      ],
    );
  }

  Widget _expandedRow(String svgPath, String text) {
    return ListTile(
      leading: SvgPicture.asset(
        svgPath,
        height: 20,
        width: 20,
      ),
      title: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 14),
      ),
      onTap: () {},
    );
  }
}
