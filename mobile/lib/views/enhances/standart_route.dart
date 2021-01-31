import 'package:flutter/material.dart';
import 'package:mobile/views/enhances/base_route_builder.dart';

class StandardRoute extends MaterialPageRoute {
  StandardRoute({
    RouteSettings settings,
    Widget page,
    bool allowPhysicalBackButton = true,
  }) : super(
          settings: settings,
          builder: (context) {
            return WillPopScope(
              onWillPop: () async {
                if (!allowPhysicalBackButton) {
                  return false;
                }
                if (Navigator.canPop(context)) {
                  return true;
                }
                return false;
              },
              child: page,
            );
          },
        );
}

class StandardRouteBuilder extends BaseRouteBuilder {
  final Widget page;
  final bool allowAndroidBackButton;

  StandardRouteBuilder({
    this.page,
    this.allowAndroidBackButton = true,
  });

  @override
  Route build({RouteSettings settings}) {
    return StandardRoute(
      page: page,
      settings: settings,
      allowPhysicalBackButton: allowAndroidBackButton,
    );
  }
}
