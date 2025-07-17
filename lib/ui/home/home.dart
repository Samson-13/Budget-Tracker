import 'package:budget_tracker/ui/widget/custom_app_bar.dart';
import 'package:budget_tracker/ui/widget/custom_drawer.dart';
import 'package:budget_tracker/ui/widget/summary_card_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expenses = 3400;
    final incomes = 5000;
    final balance = incomes - expenses;

    final recentTransactions = [
      {
        'label': 'Groceries',
        'amount': 200,
        'icon': Icons.shopping_cart,
        'color': Colors.orange,
      },
      {
        'label': 'Taxi',
        'amount': 80,
        'icon': Icons.local_taxi,
        'color': Colors.cyan,
      },
      {
        'label': 'Doctor',
        'amount': 400,
        'icon': Icons.medical_services,
        'color': Colors.red,
      },
    ];

    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Budget Tracker',
        showBackButton: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Overall Balance',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 4),
              Text(
                '\$$balance',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // Summary Cards
              Row(
                children: [
                  buildSummaryCard('Expenses', expenses, Colors.red),
                  const SizedBox(width: 16),
                  buildSummaryCard('Incomes', incomes, Colors.green),
                ],
              ),
              const SizedBox(height: 24),

              // Recent Transactions Section
              Text(
                'Recent Transactions',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: recentTransactions.length,
                  separatorBuilder: (_, __) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final tx = recentTransactions[index];
                    final String label = tx['label'] as String;
                    final int amount = tx['amount'] as int;
                    final IconData icon = tx['icon'] as IconData;
                    final Color color = tx['color'] as Color;

                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: color.withValues(alpha: 0.2),
                        child: Icon(icon, color: color),
                      ),
                      title: Text(label),
                      trailing: Text('- \$${amount.toString()}'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
