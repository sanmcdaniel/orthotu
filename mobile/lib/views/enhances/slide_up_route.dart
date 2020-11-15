import 'package:flutter/material.dart';
import 'package:mobile/views/enhances/base_route_builder.dart';

class SlideUpRoute extends PageRouteBuilder {
  SlideUpRoute({
    RouteSettings settings,
    Widget page,
    bool allowPhysicalBackButton = true,
  }) : super(
          settings: settings,
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(animation),
            child: WillPopScope(
              onWillPop: () async {
                if (!allowPhysicalBackButton) {
                  return false;
                }
                if (Navigator.canPop(context)) {
                  return true;
                }
                return false;
              },
              child: child,
            ),
          ),
        );
}

class SlideUpRouteBuilder extends BaseRouteBuilder {
  final Widget page;
  final bool allowAndroidBackButton;
  SlideUpRouteBuilder({
    this.page,
    this.allowAndroidBackButton = true,
  });
  @override
  Route build({RouteSettings settings}) {
    return SlideUpRoute(
      page: page,
      settings: settings,
      allowPhysicalBackButton: allowAndroidBackButton,
    );
  }
}
