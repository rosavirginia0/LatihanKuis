import 'package:flutter/material.dart';
import '../vehicle.dart';

class DetailPage extends StatelessWidget {
  final Vehicle vehicle;

  const DetailPage({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(vehicle.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama: ${vehicle.name}", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Tipe: ${vehicle.type}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            Text(vehicle.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}