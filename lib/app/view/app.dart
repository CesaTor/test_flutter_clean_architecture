import 'package:flutter/material.dart';
import 'package:fomo/config/routes/routes.dart';
import 'package:fomo/config/theme/theme.dart';
import 'package:fomo/l10n/l10n.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: $appRoutes,
      ),
    );
  }
}
