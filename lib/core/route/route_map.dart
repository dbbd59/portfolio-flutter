// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/feature/settings/view/settings_page.dart';
import 'package:portfolio_flutter/feature/welcome/view/welcome_page.dart';

// 📦 Package imports:
import 'package:routemaster/routemaster.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/core/route/title_observer.dart';
import 'package:portfolio_flutter/feature/about_me/view/about_me_page.dart';
import 'package:portfolio_flutter/feature/gh_trend/view/github_trends_bloc_page.dart';

final routemaster = RoutemasterDelegate(
  observers: [TitleObserver()],
  routesBuilder: (context) {
    return loggedInRoutes;
  },
);

final loggedInRoutes = RouteMap(
  onUnknownRoute: (_) => const Redirect('/'),
  routes: {
    '/': (routeData) => const Redirect('/welcome'),
    '/github-trends': (_) => const MaterialPage(
          name: 'Github Trends',
          child: GitHubTrendsPage(),
        ),
    '/about-me': (_) => const MaterialPage(
          name: 'About Me',
          child: AboutMePage(),
        ),
    '/settings': (_) => const MaterialPage(
          name: 'Settings',
          child: SettingsPage(),
        ),
    '/welcome': (_) => const MaterialPage(
          name: 'Dbbd59',
          child: WelcomePage(),
        ),
  },
);
