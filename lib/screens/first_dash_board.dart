import 'package:flutter/material.dart';
import 'package:innovaronix_app/screens/dashboard_bottom_section.dart';
import 'package:innovaronix_app/screens/dashboard_middle_section.dart';
import 'package:innovaronix_app/screens/dashboard_top_section.dart';
import 'package:innovaronix_app/screens/side_menue.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF474747),
        leading: Builder(
          builder: (context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: 24,
                    height: 20,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  )),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 20,
              backgroundImage:
                  const AssetImage('assets/images/profile_image.png'),
              child: InkWell(
                onTap: () {
                  debugPrint("Profile icon tapped");
                },
              ),
            ),
          ),
        ],
      ),
      drawer: const SideMenu(),
      body: const Column(
        children: [
          TopSection(),
          MiddleSection(),
          BottomSection(),
        ],
      ),
    );
  }
}






