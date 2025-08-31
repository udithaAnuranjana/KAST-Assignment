import 'package:go_router/go_router.dart';
import 'package:kast_assignment/Features/Profile/profile_page.dart';
import '../../Features/Card Details/Presentation/Pages/card_details_page.dart';
import '../../Features/Wallet/Presentation/Pages/wallet_page.dart';
import '../../Features/Messages/messages_page.dart';
import '../../Features/Notifications/notifications_page.dart';
import '../../Features/App Shell/floating_action_button_view.dart';

class AppRoutes {
  static const dashboard = '/';
  static const messages = '/messages';
  static const card = '/card';
  static const notifications = '/notifications';
  static const settings = '/settings';
  static const action = '/action';
}

int indexForLocation(String loc) {
  if (loc.startsWith(AppRoutes.messages)) return 1;
  if (loc.startsWith(AppRoutes.notifications)) return 2;
  if (loc.startsWith(AppRoutes.settings)) return 3;
  return 0;
}

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.dashboard,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        final idx = indexForLocation(state.matchedLocation);
        return AppShell(
          selectedIndex: idx,
          onSelectTab: (i) {
            switch (i) {
              case 0: context.go(AppRoutes.dashboard); break;
              case 1: context.go(AppRoutes.messages); break;
              case 2: context.go(AppRoutes.notifications); break;
              case 3: context.go(AppRoutes.settings); break;
            }
          },
          onTap: () => context.push(AppRoutes.action),
          child: child,
        );
      },
      routes: [
        GoRoute(path: AppRoutes.dashboard, builder: (c, s) => const WalletPage()),
        GoRoute(path: AppRoutes.messages, builder: (c, s) => const MessagesPage()),
        GoRoute(path: AppRoutes.notifications, builder: (c, s) => const NotificationsPage()),
        GoRoute(path: AppRoutes.settings, builder: (c, s) => const ProfilePage()),
      ],
    ),
    GoRoute(path: AppRoutes.action, builder: (c, s) => const CardDetailsPage(),
    )
  ]
);
