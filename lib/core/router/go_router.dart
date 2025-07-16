import 'package:budget_tracker/ui/app.dart';
import 'package:budget_tracker/ui/graph/graph.dart';
import 'package:budget_tracker/ui/home/home.dart';
import 'package:go_router/go_router.dart' show GoRoute, GoRouter;

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const RootScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/graph', builder: (context, state) => const GraphScreen()),
  ],
);
