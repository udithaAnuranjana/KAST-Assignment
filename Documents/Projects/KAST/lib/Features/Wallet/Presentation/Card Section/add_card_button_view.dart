import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Theme/app_colors.dart';
import 'package:kast_assignment/Core/Theme/app_strings.dart';

class AddCardButton extends StatelessWidget {

  final VoidCallback? onPressed;
  final String label;

  const AddCardButton({
    super.key,
    this.onPressed,
    this.label = AppStrings.addCard,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      // + icon
      icon: const Icon(
          Icons.add,
          size: 14,
          color: AppColors.primary
      ),
      //Add text label
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w800,
          color: AppColors.primary,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: AppColors.primary.withValues(alpha: 0.12),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}