import 'package:flutter/material.dart';

class ListViewLayout extends StatelessWidget {
  final Widget listWidget;

  const ListViewLayout({Key key, this.listWidget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          listWidget,
        ],
      ),
    );
  }
}
