import 'package:flutter/material.dart';
import './widget/card_widget.dart';

class Parsing extends StatelessWidget {
  const Parsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Parsing Data")),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          CardWidget(
              judul: "Universitas Bina Sarana Informatika",
              icon: Icons.account_balance),
          CardWidget(judul: "Pengenalan Flutter", icon: Icons.add_location),
          CardWidget(judul: "Mobile Progamming", icon: Icons.android)
        ],
      ),
    );
  }
}
