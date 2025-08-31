import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Theme/app_colors.dart';
import 'action_button_row_view.dart';
import 'balance_view.dart';
import 'header_top_bar.dart';

class TopSectionView extends StatelessWidget {
  final String symbol;
  final String amount;
  final String? currency;
  final VoidCallback onAddMoney;
  final VoidCallback onExchange;
  final VoidCallback onSearchTap;
  final VoidCallback? onAvatarTap;
  final ImageProvider? avatarImage;

  const TopSectionView({
    super.key,
    required this.symbol,
    required this.amount,
    this.currency,
    required this.onAddMoney,
    required this.onExchange,
    required this.onSearchTap,
    this.onAvatarTap,
    this.avatarImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,

      constraints: const BoxConstraints(minHeight: 320),

      child: SafeArea(
        bottom: false,
        child: Padding(

          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header (Avatar + Search)
              HeaderTopBar(
                onSearchTap: onSearchTap,
                onAvatarTap: onAvatarTap,
                avatarImage: avatarImage,
              ),

              const SizedBox(height: 24),

              // Balance view
              Center(
                child: BalanceView(
                  symbol: symbol,
                  amount: amount,
                  currency: (currency != null && currency!.trim().isNotEmpty)
                      ? currency!
                      : '',
                ),
              ),

              const SizedBox(height: 36),

              // Action Buttons
              HeaderActionsRow(
                onAddMoney: onAddMoney,
                onExchange: onExchange,
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}