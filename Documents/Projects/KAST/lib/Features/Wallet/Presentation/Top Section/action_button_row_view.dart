import 'package:flutter/material.dart';
import 'package:kast_assignment/Features/Wallet/Presentation/Top%20Section/action_button_view.dart';
import 'package:kast_assignment/Core/Theme/app_strings.dart';

class HeaderActionsRow extends StatelessWidget {
  final VoidCallback onAddMoney;
  final VoidCallback onExchange;

  const HeaderActionsRow({
    super.key,
    required this.onAddMoney,
    required this.onExchange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Add money button
        Expanded(
          child: ActionButton(
            label: AppStrings.addMoney,
            onTap: onAddMoney,
          ),
        ),

        const SizedBox(width: 12),

        //Exchange button
        Expanded(
          child: ActionButton(
            label: AppStrings.exchange,
            onTap: onExchange,
          ),
        ),
      ],
    );
  }
}