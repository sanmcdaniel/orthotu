import 'package:flutter/material.dart';

class BarPointSelected extends StatelessWidget {
  final int currentIndex;
  final List<Widget> listViews;
  BarPointSelected({
    @required this.currentIndex,
    @required this.listViews,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 285,
      child: Container(
        height: MediaQuery.of(context).size.height / 12,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: listViews.map<Widget>((index) => index).toList(),
        ),
      ),
    );
  }
}
