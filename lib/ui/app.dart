import 'package:budget_tracker/ui/graph/graph.dart';
import 'package:budget_tracker/ui/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: HomeScreen()),
    Center(child: GraphScreen()),
    Center(child: Text('Search')),
    Center(child: Text('Profile')),
    Center(child: Text('Profile')),
  ];

  final List<_NavItem> _navItems = [
    _NavItem(label: 'Home', iconPath: 'assets/svg/house.svg'),
    _NavItem(label: 'Likes', iconPath: 'assets/svg/graph.svg'),
    _NavItem(label: 'Search', iconPath: 'assets/svg/transactions.svg'),
    _NavItem(label: 'Profile', iconPath: 'assets/svg/category.svg'),
    _NavItem(label: 'Profile', iconPath: 'assets/svg/settings.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.surface,
        elevation: 10,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(_navItems.length, (index) {
                final isSelected = index == _selectedIndex;
                final item = _navItems[index];
                return Expanded(
                  // FIX: Wrap with Expanded
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment:
                          MainAxisAlignment
                              .center, // optional: better vertical alignment
                      children: [
                        SvgPicture.asset(
                          item.iconPath,
                          height: 28,
                          width: 28,
                          colorFilter: ColorFilter.mode(
                            isSelected
                                ? Theme.of(context).colorScheme.primary
                                : Colors.grey,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavItem {
  final String label;
  final String iconPath;

  const _NavItem({required this.label, required this.iconPath});
}
