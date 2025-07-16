import 'package:budget_tracker/ui/graph/widget/category_widget.dart';
import 'package:budget_tracker/ui/graph/widget/custom_pie_chart.dart';
import 'package:budget_tracker/ui/widget/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class GraphScreen extends ConsumerStatefulWidget {
  const GraphScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GraphScreenState();
}

class _GraphScreenState extends ConsumerState<GraphScreen> {
  final List<Map<String, dynamic>> data = [
    {
      'label': 'Salary',
      'color': Colors.blue,
      'amount': 5000,
      'transactions': 1,
      'icon': Icons.savings,
    },
    {
      'label': 'Medicine',
      'color': Colors.red,
      'amount': 2680,
      'transactions': 2,
      'icon': Icons.medical_services,
    },
    {
      'label': 'Restaurant',
      'color': Colors.orange,
      'amount': 2680,
      'transactions': 5,
      'icon': Icons.restaurant,
    },
    {
      'label': 'Cloth',
      'color': Colors.purple,
      'amount': 2680,
      'transactions': 3,
      'icon': Icons.shopping_bag,
    },
    {
      'label': 'Fuel',
      'color': Colors.green,
      'amount': 9500 - (5000 + 2680 * 3), // Remaining amount
      'transactions': 1,
      'icon': Icons.local_gas_station,
    },
    {
      'label': 'Lunch',
      'color': Colors.cyan,
      'amount': 9500 - (200 + 2680 * 3), // Remaining amount
      'transactions': 1,
      'icon': Icons.food_bank,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final total = data.fold<double>(0, (sum, item) => sum + item['amount']);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      color: Theme.of(context).colorScheme.surfaceDim,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 200, child: ExpensePieChart(data: data)),
                    const SizedBox(height: 8),
                    Text(
                      'Total\n\$${total.toStringAsFixed(0)}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 16,
                      runSpacing: 8,
                      children:
                          data
                              .map(
                                (e) => Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        color: e['color'],
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Text(e['label']),
                                  ],
                                ),
                              )
                              .toList(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data[index];
                  return CategoryListTile(
                    color: item['color'],
                    icon: item['icon'],
                    label: item['label'],
                    transactions: item['transactions'],
                    amount: (item['amount'] as num).toDouble(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
