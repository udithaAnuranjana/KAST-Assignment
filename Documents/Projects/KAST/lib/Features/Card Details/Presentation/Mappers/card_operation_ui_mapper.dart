import 'package:flutter/material.dart';
import '../../../../Core/Theme/app_strings.dart';
import '../../Domain/card_operation_type.dart';

extension CardOperationUiX on CardOperationType {

  // Title
  String get title => switch (this) {
    CardOperationType.topUp => AppStrings.topUpCard,
    CardOperationType.payments => AppStrings.payments,
    CardOperationType.output => AppStrings.cardOutput,
    CardOperationType.withdrawAll => AppStrings.withdrawAll,
  };

  // Icon Data
  IconData get icon => switch (this) {
    CardOperationType.topUp => Icons.account_balance_wallet_outlined,
    CardOperationType.payments => Icons.payment_outlined,
    CardOperationType.output => Icons.arrow_right_alt,
    CardOperationType.withdrawAll => Icons.savings_outlined,
  };
}
