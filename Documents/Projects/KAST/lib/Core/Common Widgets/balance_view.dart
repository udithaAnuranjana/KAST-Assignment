import 'package:flutter/material.dart';

class BalanceAmount extends StatelessWidget {
  final String symbol;
  final String amount;
  final String? currency;
  final bool onPrimary;

  const BalanceAmount({
    super.key,
    required this.symbol,
    required this.amount,
    this.currency,
    this.onPrimary = false,
  });

  bool get showCurrency => (currency != null);

  @override
  Widget build(BuildContext context) {

    final textColor = onPrimary ? Colors.white : Colors.black;

    final amountStyle   = const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700
    ).copyWith(color: textColor);

    final symbolStyle   = const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600
    ).copyWith(color: textColor);

    final currencyStyle = const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500
    ).copyWith(color: textColor);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            //Currency symbol
            Transform.translate(
              offset: Offset(0, -12),
              child: Text(
                  symbol,
                  style: symbolStyle
              ),
            ),

            const SizedBox(width: 6),

            //Amount
            Text(
                amount,
                style: amountStyle
            ),
          ],
        ),
        //Currency
        if (showCurrency) ...[
          const SizedBox(height: 6),
          Text(
              currency!,
              style: currencyStyle
          ),
        ],
      ],
    );
  }
}