import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Theme/app_colors.dart';

class OptionCell extends StatelessWidget {

  // styling constants
  static const double borderRadius = 12;
  static const double padding = 16;
  static const double iconContainerSize = 36;
  static const double iconSize = 20;

  final String title;
  final IconData icon;
  final VoidCallback? onTap;

  const OptionCell({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(

      margin: EdgeInsets.zero,
      color: AppColors.surfaceColor,
      shadowColor: Colors.black.withValues(alpha: 0.04),
      surfaceTintColor: Colors.transparent,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: BorderSide(
          color: Colors.black.withValues(alpha: 0.01),
        ),
      ),

      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(padding),
          child: Row(
            children: [
              // Icon
              Container(
                width: iconContainerSize,
                height: iconContainerSize,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(borderRadius)
                ),
                child: Icon(
                    icon,
                    color: AppColors.primary,
                    size: iconSize
                ),
              ),

              // Space
              const SizedBox(width: 12),

              // Title
              Expanded(
                child: Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}