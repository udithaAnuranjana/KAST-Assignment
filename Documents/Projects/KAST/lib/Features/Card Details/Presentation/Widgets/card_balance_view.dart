import 'package:flutter/material.dart';
import '../../../../Core/Common Widgets/balance_view.dart';

class CardBalanceView extends StatelessWidget {

  final String amount;
  final String symbol;

  const CardBalanceView({
    super.key,
    required this.amount,
    this.symbol = r'$',
  });

  @override
  Widget build(BuildContext context) => BalanceAmount(
      symbol: symbol,
      amount: amount,
      currency: null,
      onPrimary: false
  );
}