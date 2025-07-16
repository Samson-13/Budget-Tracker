import 'package:flutter/material.dart';

class CategoryListTile extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final int transactions;
  final double amount;

  const CategoryListTile({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
    required this.transactions,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceDim,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Theme.of(context).colorScheme.surfaceDim,
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.surfaceDim,
            child: Icon(icon, color: color),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '$transactions transactions',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Text(
            '\$$amount',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
