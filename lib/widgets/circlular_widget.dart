import 'package:flutter/material.dart';

class CircularProfile extends StatelessWidget {
  final String name;
  final String role;
  final IconData icon;
  const CircularProfile(
      {super.key, required this.name, required this.icon, required this.role});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CircleAvatar(
        backgroundColor: role == 'Admin' ? Colors.deepPurple : Colors.orange,
        child: Icon(icon),
      ),
      Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(role, style: const TextStyle(color: Colors.grey))
    ]);
  }
}
