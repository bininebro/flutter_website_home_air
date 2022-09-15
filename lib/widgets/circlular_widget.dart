import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class CircularProfile extends StatelessWidget {
  final String name;
  final String role;
  final IconData icon;
  CircularProfile(
      {super.key, required this.name, required this.icon, required this.role});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CircleAvatar(
        child: Icon(icon),
        backgroundColor: role == 'Admin' ? Colors.deepPurple : Colors.orange,
      ),
      Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      Text(role, style: TextStyle(color: Colors.grey))
    ]);
  }
}
