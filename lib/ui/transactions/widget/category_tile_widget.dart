import 'package:flutter/material.dart';

Widget buildTransactionTile(Map<String, dynamic> item) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: item['color'], width: 0.5),
    ),
    padding: const EdgeInsets.all(12),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: item['color'].withOpacity(0.2),
          child: Icon(item['icon'], color: item['color']),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item['label'],
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 4),
              Text(
                '\$${item['amount']}',
                style: TextStyle(
                  color: item['isIncome'] ? item['color'] : item['color'],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
