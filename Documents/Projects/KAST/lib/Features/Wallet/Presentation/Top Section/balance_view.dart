import 'package:flutter/material.dart';
import '../../../../Core/Common Widgets/balance_view.dart';

class BalanceView extends StatelessWidget {
  final String amount;
  final String symbol;
  final String currency;

  const BalanceView({
    super.key,
    required this.amount,
    this.symbol = r'$',
    this.currency = 'USD · Dollar',
  });

  @override
  Widget build(BuildContext context) => BalanceAmount(
      symbol: symbol,
      amount: amount,
      currency: currency,
      onPrimary: true
  );
}