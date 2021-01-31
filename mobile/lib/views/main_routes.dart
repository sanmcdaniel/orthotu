import 'package:flutter/material.dart';
import 'package:mobile/views/enhances/base_route_builder.dart';
import 'package:mobile/views/enhances/standart_route.dart';
import 'package:mobile/views/pages/cause_page.dart';
import 'package:mobile/views/pages/home_page.dart';
import 'package:mobile/views/pages/surgery_page.dart';
import 'package:mobile/views/pages/treatment_content_page.dart';
import 'package:mobile/views/pages/treatment_main_page.dart';
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
  RouteName.treatmentPage.name: StandardRouteBuilder(page: TreatmentPage()),
  RouteName.treatmentContentPage.name:
      StandardRouteBuilder(page: TreatmentContentPage()),
  RouteName.surgeryPage.name: StandardRouteBuilder(page: SurgeryPage()),
};

enum RouteName {
  waiting,
  emptyPage,
  causePage,
  treatmentPage,
  treatmentContentPage,
  surgeryPage
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
      case RouteName.treatmentPage:
        return "treatMent type";
      case RouteName.treatmentContentPage:
        return "treatMent content type";
      case RouteName.surgeryPage:
        return "surgery type";
    }
    return null;
  }
}
