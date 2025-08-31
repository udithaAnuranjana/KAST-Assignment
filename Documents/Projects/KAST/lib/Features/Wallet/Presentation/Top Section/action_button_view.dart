import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const ActionButton({
    super.key,
    required this.label,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor:  Colors.white.withValues(alpha: 0.2),
        foregroundColor:  Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
        ),
        padding: const EdgeInsets.all(16),
        textStyle: const TextStyle(
            fontWeight: FontWeight.w600
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}