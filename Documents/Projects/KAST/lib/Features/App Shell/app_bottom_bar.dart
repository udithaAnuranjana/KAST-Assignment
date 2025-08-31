import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Theme/app_colors.dart';

class AppBottomBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const AppBottomBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        elevation: 10,
        child: SizedBox(
          height: 64,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Dashboard
                    NavIconButton(
                      icon: Icons.grid_view_rounded,
                      isActive: selectedIndex == 0,
                      onTap: () => onItemSelected(0),
                    ),

                    // Messages
                    NavIconButton(
                      icon: Icons.chat_bubble,
                      isActive: selectedIndex == 1,
                      onTap: () => onItemSelected(1),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 56),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Notifications
                    NavIconButton(
                      icon: Icons.notifications,
                      isActive: selectedIndex == 2,
                      onTap: () => onItemSelected(2),
                    ),

                    // Profile
                    NavIconButton(
                      icon: Icons.person,
                      isActive: selectedIndex == 3,
                      onTap: () => onItemSelected(3),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavIconButton extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;

  const NavIconButton({
    super.key,
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        size: 28,
        color: isActive
            ? AppColors.primary
            : AppColors.disabled,
      ),
      splashRadius: 28,
    );
  }
}