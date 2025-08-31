import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Theme/app_colors.dart';
import 'app_bottom_bar.dart';

class AppShell extends StatelessWidget {
  final Widget child;
  final int selectedIndex;
  final ValueChanged<int> onSelectTab;
  final VoidCallback onTap;

  const AppShell({
    super.key,
    required this.child,
    required this.selectedIndex,
    required this.onSelectTab,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: child,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: onTap,
        shape: const CircleBorder(),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.credit_card_rounded),
      ),
      bottomNavigationBar: AppBottomBar(
        selectedIndex: selectedIndex,
        onItemSelected: onSelectTab,
      ),
    );
  }
}
