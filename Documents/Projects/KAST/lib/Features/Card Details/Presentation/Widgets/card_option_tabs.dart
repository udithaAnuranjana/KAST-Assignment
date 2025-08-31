import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Theme/app_colors.dart';
import 'package:kast_assignment/Core/Theme/app_strings.dart';

import 'card_operation_options_listview.dart';

class CardOptionTabs extends StatelessWidget {
  const CardOptionTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: AppColors.background,
      child:  Column(
        children: [
          TabBar(
            //Colors
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.tabInactive,

            // Typography
            labelStyle: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600
            ),

            // Indicator
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: EdgeInsets.zero,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: AppColors.primary, width: 2),
            ),

            // Labels
            tabs: const [
              Tab(text: AppStrings.operations),
              Tab(text: AppStrings.history)
            ],
          ),

          const SizedBox(height: 12),

          const Expanded(
              child: TabBarView(
                  children: [
                    CardOperationsListView(),
                    Center(child: Text(
                        AppStrings.historyTabDummyText
                      )
                    )
                  ]
              )
          )
        ],
      ),
    );
  }
}