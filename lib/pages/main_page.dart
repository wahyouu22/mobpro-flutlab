import 'package:flutter/material.dart';
import './beranda/beranda_page.dart';
import 'profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;
  List<Widget> pageList = [
    const BerandaPage(),
    const Center(child: Text("Halaman Order", style: TextStyle(fontSize: 40))),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        currentIndex: pageIndex,
        items: [
          barItem(Icons.home, "Beranda"),
          barItem(Icons.wallet, "Order"),
          barItem(Icons.account_circle_outlined, "Profil"),
        ],
      ),
    );
  }

  BottomNavigationBarItem barItem(IconData iconData, String title) {
    return BottomNavigationBarItem(icon: Icon(iconData), label: title);
  }
}
