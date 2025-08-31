import 'package:flutter/material.dart';
import 'package:kast_assignment/Features/Wallet/Presentation/Account%20Section/accounts_section_view.dart';
import 'package:kast_assignment/Features/Wallet/Presentation/Card%20Section/card_section_view.dart';
import 'package:kast_assignment/Features/Wallet/Data/temp_data.dart';
import '../Top Section/top_section_view.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).padding.bottom;
    const barH = kBottomNavigationBarHeight; // ~56
    const fabClearance = 72.0;               // room for FAB shadow

    return Column(
      children: [
        // ---- BLUE HEADER (fixed) ----
        TopSectionView(
          symbol: r'$',
          amount: '18 199.24',
          currency: 'USD · Dollar',
          onAddMoney: () => debugPrint('Add money'),
          onExchange: () => debugPrint('Exchange'),
          onSearchTap: () => debugPrint('Search'),
        ),

        // ---- WHITE AREA (scrollable) ----
        Expanded(
          child: Container(
            color: const Color(0xFFF6F7FB),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
                const SliverToBoxAdapter(child: AccountsSection(items: FakeData.accounts,)),
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
                SliverToBoxAdapter(child: CardsSection(items: FakeData.cards)),

                // keep content above BottomAppBar/FAB
                SliverToBoxAdapter(
                  child: SizedBox(height: bottomInset + barH + fabClearance),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
