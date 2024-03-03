import 'package:cozyv2/pages/detail_page.dart';
import 'package:cozyv2/pages/home_page.dart';
import 'package:cozyv2/pages/mainwrapper.dart';
import 'package:cozyv2/pages/profile_page.dart';
import 'package:cozyv2/pages/splash_page.dart';
import 'package:cozyv2/pages/transaction_history_page.dart';
import 'package:cozyv2/pages/wish_list_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();

  // Private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHome = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _shellNavigationWishlist = GlobalKey<NavigatorState>(debugLabel: 'shellWishlist');
  static final _shellNavigatorTransaction = GlobalKey<NavigatorState>(debugLabel: 'shellTransaction');
  static final _shellNavigationAccount = GlobalKey<NavigatorState>(debugLabel: 'shellAccount');

  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routerNeglect: true,
    routes: [
      GoRoute(
        name: 'splashscreen',
        path: '/splash',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const SplashPage(),
      ),
      // MainWrapper
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => MainWrapper(navigationShell: navigationShell),
        branches: <StatefulShellBranch>[
          /// Brach Home
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHome,
            routes: <RouteBase>[
              GoRoute(
                name: 'homepage',
                path: '/',
                builder: (context, state) => const HomePage(),
                routes: [
                  GoRoute(
                    name: 'space',
                    path: 'space',
                    builder: (context, state) => const DetailPage(),
                  )
                ]
              ),              
            ]
          ),

          /// Brach Search
          StatefulShellBranch(
            navigatorKey: _shellNavigationWishlist,
            routes: <RouteBase>[
              GoRoute(
                name: 'wishlists',
                path: '/wishlists',
                builder: (BuildContext context, GoRouterState state) => const WishlistPage()
              ),              
            ]
          ),

          /// Branch History
          StatefulShellBranch(
            navigatorKey: _shellNavigatorTransaction,
            routes: <RouteBase>[
              GoRoute(
                name: "transactions",
                path: "/transactions",
                builder: (context, state) => const TransactionHistoryPage(),
              )
            ]
          ),

          /// Brach Account
          StatefulShellBranch(
            navigatorKey: _shellNavigationAccount,
            routes: <RouteBase>[
              GoRoute(
                name: 'account',
                path: '/account',
                builder: (context, state) => const ProfilePage(),
              ),
            ]
          ),
        ]
      ),
    ]
  );
}