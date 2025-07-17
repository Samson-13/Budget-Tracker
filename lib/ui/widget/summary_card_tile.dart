import 'package:flutter/material.dart';

Widget buildSummaryCard(String title, int amount, Color color) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(12),

      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 4),
          Text('\$$amount', style: TextStyle(color: color, fontSize: 18)),
        ],
      ),
    ),
  );
}
