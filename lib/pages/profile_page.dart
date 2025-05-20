import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'assets/img/profile.jpg',
              height: 200,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 16),
            const Text(
              'Wahyouu',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'adjiewahyudi@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Edit Profil'),
              onTap: () {
                // Navigasi ke halaman edit profil
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Ganti Kata Sandi'),
              onTap: () {
                // Navigasi ke halaman ganti password
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Keluar'),
              onTap: () {
                // Proses logout
              },
            ),
          ],
        ),
      ),
    );
  }
}
