import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kast_assignment/Core/Theme/app_strings.dart';
import '../Widgets/card_balance_view.dart';
import '../Widgets/card_option_tabs.dart';
import '../Widgets/card_view.dart';

class CardDetailsPage extends StatelessWidget {
  const CardDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //Appbar
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          foregroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(
                Icons.arrow_back_ios_new_rounded
            ),
            onPressed: () => context.pop()
          ),
          title: const Text(
              AppStrings.card,
              style: TextStyle(
                  fontWeight: FontWeight.w600)
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: const [

            SizedBox(height: 12),

            //Card balance
            CardBalanceView(amount: '18 199.24'),

            SizedBox(height: 8),

            //Visa card
            VisaCardView(),

            SizedBox(height: 12),

            //Option Tabs
            Expanded(
                child: CardOptionTabs()
            )
          ],
        ),
      ),
    );
  }
}