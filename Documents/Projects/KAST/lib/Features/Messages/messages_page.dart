import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Theme/app_colors.dart';
import 'package:kast_assignment/Core/Theme/app_strings.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.background,
      child: Center(
        child: Text(
          AppStrings.messagesTabDummyText,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
