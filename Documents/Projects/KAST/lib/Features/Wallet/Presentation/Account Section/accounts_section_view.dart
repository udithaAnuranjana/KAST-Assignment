import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Common Widgets/options_cell_view.dart';
import 'package:kast_assignment/Core/Theme/app_strings.dart';
import 'package:kast_assignment/Features/Wallet/Presentation/Mappers/account_item_ui_mapper.dart';
import '../../../../Core/Theme/app_colors.dart';
import '../../Domain/account_item.dart';

class AccountsSection extends StatelessWidget {
  final List<AccountItem> items;
  const AccountsSection({
    super.key,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Account label
          const Text(
              AppStrings.accounts,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800
              )
          ),

          const SizedBox(height: 8),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(color: Colors.grey,
                    blurRadius: 2,
                    offset: Offset(0, 2)
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),

            //Card list
            child: Column(
              children: [
                for (int i = 0; i < items.length; i++) ...[
                  OptionCell(
                      title: items[i].title,
                      icon: items[i].icon
                  ),
                  if (i != items.length - 1)
                    const Divider(height: 1, color: AppColors.background),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}