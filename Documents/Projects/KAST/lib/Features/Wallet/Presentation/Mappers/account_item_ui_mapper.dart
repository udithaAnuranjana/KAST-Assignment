import 'package:flutter/material.dart';
import '../../Domain/account_item.dart';

extension AccountItemUiX on AccountItem {
  IconData get icon => switch (currency) {
    'EUR' => Icons.euro_rounded,
    'GBP' => Icons.currency_pound_rounded,
    _     => Icons.credit_card_rounded,
  };
}
