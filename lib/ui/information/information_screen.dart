import 'package:budget_tracker/ui/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InformationScreen extends ConsumerWidget {
  final String title;
  const InformationScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(appBar: customAppBar(context: context, title: title));
  }
}
