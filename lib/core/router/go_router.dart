import 'package:budget_tracker/ui/app.dart';
import 'package:budget_tracker/ui/category/category.dart';
import 'package:budget_tracker/ui/graph/graph.dart';
import 'package:budget_tracker/ui/home/home.dart';
import 'package:budget_tracker/ui/information/information_screen.dart';
import 'package:budget_tracker/ui/settings/settings.dart';
import 'package:budget_tracker/ui/transactions/transactions.dart';
import 'package:go_router/go_router.dart' show GoRoute, GoRouter;

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const RootScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/graph', builder: (context, state) => const GraphScreen()),
    GoRoute(
      path: '/transactions',
      builder: (context, state) => const TransactionsScreen(),
    ),
    GoRoute(
      path: '/category',
      builder: (context, state) => const CategoryScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/information_screen',
      builder: (context, state) {
        final title = state.extra as String;
        return InformationScreen(title: title);
      },
    ),
  ],
);
