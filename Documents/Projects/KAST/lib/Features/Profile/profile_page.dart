import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Theme/app_strings.dart';

import '../../Core/Theme/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.background,
      child: Center(
        child: Text(
          AppStrings.profileTabDummyText,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}