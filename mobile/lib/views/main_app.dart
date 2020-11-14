import 'package:banana_ui/constants/styles/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:superapp_c4c/stores/app_store.dart';
import 'package:superapp_c4c/views/enhances/enhances.dart';
import 'package:superapp_c4c/views/enhances/on_navigate_observer.dart';
import 'package:superapp_c4c/views/main_routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class MainApp extends StatelessWidget {
  final RouteName initialRoute;

  const MainApp({
    Key key,
    this.initialRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStore = Provider.of<AppStore>(context, listen: false);
    return MaterialApp(
      navigatorKey: appStore.navigatorKey,
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale("th"),
      supportedLocales: AppLocalizations.supportedLanguageCodes.map(
        (code) => Locale(code),
      ),
      theme: defaultThemeData,
      initialRoute: initialRoute?.name ?? mainInitialRoute.name,
      onGenerateRoute: generateRouteDelegate(),
      navigatorObservers: [
        OnNavigateObserver((route) => appStore.changePage(route.settings.name)),
      ],
    );
  }
}
