import 'package:flutter/material.dart';

Widget buildCategoryTile(Map<String, dynamic> category) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: category['color']),
    ),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: category['color'].withOpacity(0.2),
          child: Icon(category['icon'], color: category['color']),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                category['label'],
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              Text(
                category['isIncome'] ? 'Income' : 'Expense',
                style: TextStyle(
                  color: category['isIncome'] ? Colors.green : Colors.red,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
