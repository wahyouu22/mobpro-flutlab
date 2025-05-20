import 'package:flutter/material.dart';
import './tombol_registrasi.dart';
import './tombol_login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          children: [
            Image.asset(
              'assets/img/welcome-logo.jpg',
              height: 300,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 15),
            const Text(
              "Selamat Datang",
              style: TextStyle(
                fontSize: 36,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            const Text(
              "Ini adalah aplikasi sewa mobil dimana kamu dapat menyewa berbagai macam mobil hanya dalam satu aplikasi.",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 51),
            const TombolRegistrasi(),
            const SizedBox(height: 15),
            const TombolLogin(),
          ],
        ),
      ),
    );
  }
}
