import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final String iconPath;

  const FeatureCard({
    super.key,
    required this.title,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Image.asset(
              iconPath,
              height: 30,
              width: 30,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
