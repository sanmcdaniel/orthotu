import 'package:flutter/material.dart';
import 'package:mobile/views/enhances/base_route_builder.dart';
import 'package:mobile/views/enhances/standart_route.dart';
import 'package:mobile/views/pages/cause_page.dart';
import 'package:mobile/views/pages/home_page.dart';
import 'package:mobile/views/pages/waiting_page.dart';

final RouteName mainInitialRoute = RouteName.waiting;

RouteFactory generateRouteDelegate() {
  return (RouteSettings settings) {
    BaseRouteBuilder routeBuilder = routeBuilders[settings.name];
    if (routeBuilder == null) return null;
    return routeBuilder.build(settings: settings);
  };
}

Map<String, BaseRouteBuilder> routeBuilders = {
  RouteName.waiting.name: StandardRouteBuilder(page: SplashScreen()),
  RouteName.emptyPage.name: StandardRouteBuilder(page: HomePage()),
    RouteName.causePage.name: StandardRouteBuilder(page: CausePage()),
};

enum RouteName {
  waiting,
  emptyPage,
  causePage
}

extension RouteNameExtensions on RouteName {
  String get name {
    switch (this) {
      case RouteName.waiting:
        return "waiting";
      case RouteName.emptyPage:
        return "empty type";
      case RouteName.causePage:
        return "cause type";
    }
    return null;
  }
}
