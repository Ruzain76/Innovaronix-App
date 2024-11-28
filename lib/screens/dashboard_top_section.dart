import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:innovaronix_app/screens/dashboard_search_screen.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      color: const Color(0xFF474747),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Test Project with Mohsin',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const DashboardSearchScreen();
                        },
                      );
                    },
                    icon: const Icon(Icons.keyboard_arrow_down))
              ],
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 75,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCard(
                  svgAssetPath: 'assets/icons/user_involved.svg',
                  number: '1125',
                  text: 'User\nInvolved',
                ),
                _buildCard(
                  svgAssetPath: 'assets/icons/equipment_available.svg',
                  number: '1126',
                  text: 'Equipment\nAvailable',
                ),
                _buildCard(
                  svgAssetPath: 'assets/icons/tasks_completed.svg',
                  number: '1127',
                  text: 'Tasks\nCompleted',
                ),
                _buildCard(
                  svgAssetPath: 'assets/icons/user_involved.svg',
                  number: '1125',
                  text: 'User\nInvolved',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String svgAssetPath,
    required String number,
    required String text,
  }) {
    return Container(
      width: 103,
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    svgAssetPath,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 5),
                  Text(number, style: const TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
              ),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}