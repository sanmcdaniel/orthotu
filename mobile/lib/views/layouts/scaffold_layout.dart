import 'package:flutter/material.dart';
import 'package:mobile/views/enhances/focus_cleaner.dart';

class ScaffoldLayout extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final Widget body;
  final Widget bottom;
  const ScaffoldLayout({
    this.appBar,
    this.body,
    this.bottom,
  });
  @override
  Widget build(BuildContext context) {
    return FocusCleaner(
      child: Scaffold(
        appBar: appBar,
        body: body,
        bottomNavigationBar: bottom,
      ),
    );
  }
}
