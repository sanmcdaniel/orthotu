import 'package:flutter/material.dart';
import 'package:mobile/views/atoms/carousel_controller.dart';
import 'package:mobile/views/atoms/carousel_fragment.dart';

class Carousel extends StatelessWidget {
  final List<Fragment> listViews;
  Carousel({
    @required this.listViews,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: CarouselController(
        listViews: listViews,
      ),
    );
  }
}
