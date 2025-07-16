import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ExpensePieChart extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  const ExpensePieChart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sectionsSpace: 2,
        centerSpaceRadius: 40,
        sections:
            data
                .map(
                  (e) => PieChartSectionData(
                    value: (e['amount'] as num).toDouble(),
                    color: e['color'] as Color,
                    radius: 40,
                    title: '',
                  ),
                )
                .toList(),
      ),
    );
  }
}
