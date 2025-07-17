import 'package:budget_tracker/ui/widget/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widget/category_tile_widget.dart';
import '../widget/summary_card_tile.dart';

class TransactionsScreen extends ConsumerWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expenses = 3400;
    final incomes = 5000;
    final balance = incomes - expenses;

    final List<Map<String, dynamic>> categories = [
      {
        'label': 'Family',
        'amount': 1000,
        'icon': Icons.group,
        'isIncome': false,
        'color': Colors.purple,
      },
      {
        'label': 'Education',
        'amount': 700,
        'icon': Icons.school,
        'isIncome': false,
        'color': Colors.pinkAccent,
      },
      {
        'label': 'Pets',
        'amount': 50,
        'icon': Icons.pets,
        'isIncome': false,
        'color': Colors.blueAccent,
      },
      {
        'label': 'Cinema',
        'amount': 30,
        'icon': Icons.movie,
        'isIncome': false,
        'color': Colors.pink,
      },
      {
        'label': 'Health',
        'amount': 500,
        'icon': Icons.health_and_safety,
        'isIncome': false,
        'color': Colors.cyan,
      },
      {
        'label': 'Transport',
        'amount': 20,
        'icon': Icons.directions_bus,
        'isIncome': false,
        'color': Colors.greenAccent,
      },
      {
        'label': 'Clothes',
        'amount': 350,
        'icon': Icons.shopping_bag,
        'isIncome': false,
        'color': Colors.teal,
      },
      {
        'label': 'Food',
        'amount': 500,
        'icon': Icons.restaurant,
        'isIncome': false,
        'color': Colors.lightGreen,
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 8),
                Text(
                  'Overall balance',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  '\$$balance',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.arrow_back_ios, size: 16),
                    const SizedBox(width: 4),
                    DropdownButton<String>(
                      value: 'May 2025',
                      items: const [
                        DropdownMenuItem(
                          value: 'May 2025',
                          child: Text('May 2025'),
                        ),
                      ],
                      onChanged: (_) {},
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      buildSummaryCard('Expenses', expenses, Colors.red),
                      const SizedBox(width: 16),
                      buildSummaryCard('Incomes', incomes, Colors.green),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GridView.builder(
                      itemCount: categories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12,
                            childAspectRatio: 2.2,
                          ),
                      itemBuilder: (context, index) {
                        final item = categories[index];
                        return buildTransactionTile(item);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 24,
              right: 28,
              child: AddButton(onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
