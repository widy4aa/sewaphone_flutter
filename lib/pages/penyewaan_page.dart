import 'package:flutter/material.dart';

class PenyewaanPage extends StatelessWidget {
  final List<Map<String, dynamic>> dataPenyewaan;
  const PenyewaanPage({super.key, required this.dataPenyewaan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penyewaan'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'Ini halaman penyewaan',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
