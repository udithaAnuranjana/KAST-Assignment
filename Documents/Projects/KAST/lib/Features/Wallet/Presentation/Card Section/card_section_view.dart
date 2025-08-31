import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Common Widgets/options_cell_view.dart';
import 'package:kast_assignment/Core/Theme/app_strings.dart';
import '../../../../Core/Theme/app_colors.dart';
import '../../Domain/card_item.dart';
import 'add_card_button_view.dart';

class CardsSection extends StatelessWidget {
  final List<CardItem> items;
  final VoidCallback? onAddCard;
  const CardsSection({
    super.key,
    required this.items,
    this.onAddCard
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              //Card label
              const Text(
                  AppStrings.card,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800
                  )
              ),
              const Spacer(),

              //Add card button
              AddCardButton(onPressed: onAddCard)
            ],
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
                    icon: Icons.credit_card_rounded,
                    title: '${items[i].currency} *${items[i].lastDidits}',
                  ),
                  if (i != items.length - 1) const Divider(height: 1, color: AppColors.background),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}