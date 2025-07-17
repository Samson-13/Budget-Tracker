import 'package:budget_tracker/l10n/l10n.dart';
import 'package:budget_tracker/ui/widget/custom_app_bar.dart';
import 'package:budget_tracker/ui/widget/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widget/category_tile_widget.dart';

class CategoryScreen extends ConsumerStatefulWidget {
  const CategoryScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends ConsumerState<CategoryScreen> {
  final List<Map<String, dynamic>> categories = [
    {
      'label': 'Salary',
      'icon': Icons.attach_money,
      'color': Colors.green,
      'isIncome': true,
    },
    {
      'label': 'Gift',
      'icon': Icons.card_giftcard,
      'color': Colors.blue,
      'isIncome': true,
    },
    {
      'label': 'Food',
      'icon': Icons.fastfood,
      'color': Colors.orange,
      'isIncome': false,
    },
    {
      'label': 'Transport',
      'icon': Icons.directions_bus,
      'color': Colors.cyan,
      'isIncome': false,
    },
    {
      'label': 'Shopping',
      'icon': Icons.shopping_cart,
      'color': Colors.purple,
      'isIncome': false,
    },
    {
      'label': 'Medical',
      'icon': Icons.medical_services,
      'color': Colors.red,
      'isIncome': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: context.l10n.categories,
        showBackButton: false,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: GridView.builder(
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 2.2,
              ),
              itemBuilder: (context, index) {
                final category = categories[index];
                return buildCategoryTile(category);
              },
            ),
          ),
          Positioned(
            bottom: 24,
            right: 28,
            child: AddButton(
              onPressed: () {
                // Open add category screen or dialog
              },
            ),
          ),
        ],
      ),
    );
  }
}
