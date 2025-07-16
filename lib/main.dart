import 'package:budget_tracker/core/config/theme.dart';
import 'package:budget_tracker/core/router/go_router.dart';
import 'package:budget_tracker/l10n/app_localizations.dart';
import 'package:budget_tracker/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext _) {
    return Builder(
      builder: (context) {
        return MaterialApp.router(
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,

          theme: AppTheme.getLightTheme(),
          darkTheme: AppTheme.getDarkTheme(),
          themeMode: ThemeMode.system,
          routerConfig: router,
        );
      },
    );
  }
}
