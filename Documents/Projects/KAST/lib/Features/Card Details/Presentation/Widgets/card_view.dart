import 'package:flutter/material.dart';
import 'package:kast_assignment/Core/Theme/app_colors.dart';
import 'package:kast_assignment/Core/Theme/app_strings.dart';

class VisaCardView extends StatelessWidget {

  // styling constants
  static const double cardRadius = 20;
  static const double topIconSize = 22;
  static const double brandIconSize = 28;
  static const EdgeInsets cardPadding = EdgeInsets.all(16);
  static const double cardAspectId1 = 1.6;

  static TextStyle cardTextStyle({
    required double size,
    double? spacing,
    double opacity = 1.0,
  }) {
    return TextStyle(
      color: Colors.white.withValues(alpha: opacity),
      fontSize: size,
      fontWeight: FontWeight.w600,
      letterSpacing: spacing,
    );
  }

  const VisaCardView({
    super.key,
    this.cardNumber = '5436  5436  ••••  6643',
    this.expirationDate = '08/24',
  });

  final String cardNumber;
  final String expirationDate;

  @override
  Widget build(BuildContext context) {

    final numberStyle = cardTextStyle(size: 20, spacing: 1.5);
    final labelStyle  = cardTextStyle(size: 10, spacing: 0.6, opacity: 0.45);
    final valueStyle  = cardTextStyle(size: 12);

    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 200),
      child: AspectRatio(
        aspectRatio: cardAspectId1,

        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(cardRadius),
          ),

          child: Padding(
            padding: cardPadding,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildTopSection(numberStyle),
                buildBottomSection(labelStyle, valueStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Top section of the card
  Widget buildTopSection(TextStyle numberStyle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Top icon
        const Icon(
            Icons.credit_card_rounded,
            size: topIconSize,
            color: Colors.white
        ),
        const SizedBox(height: 12),
        // Card number
        Text(
            cardNumber,
            style: numberStyle
        ),
      ],
    );
  }

  // Bottom section of the card
  Widget buildBottomSection(TextStyle labelStyle, TextStyle valueStyle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Valid date text
            Text(
                AppStrings.validDate,
                style: labelStyle
            ),
            const SizedBox(height: 2),
            // Date
            Text(
                expirationDate,
                style: valueStyle
            ),
          ],
        ),
        // Logo
        Image.asset('assets/images/card_logo.png', width: 42)
      ],
    );
  }
}