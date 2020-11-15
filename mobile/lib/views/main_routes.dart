import 'package:flutter/material.dart';
import 'package:mobile/views/enhances/base_route_builder.dart';
import 'package:mobile/views/enhances/standart_route.dart';
import 'package:mobile/views/pages/empty_page.dart';
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
  RouteName.waiting.name: StandardRouteBuilder(page: WaitingPage()),
  RouteName.emptyPage.name: StandardRouteBuilder(page: EmptyPage()),
};

enum RouteName {
  waiting,
  emptyPage,
}

extension RouteNameExtensions on RouteName {
  String get name {
    switch (this) {
      case RouteName.waiting:
        return "waiting";
      case RouteName.emptyPage:
        return "empty type";
    }
    return null;
  }
}
