import 'package:flutter/material.dart';
import 'package:mobile/views/atoms/carousel_bar_point_selected.dart';
import 'package:mobile/views/atoms/carousel_fragment.dart';
import 'package:mobile/views/atoms/carousel_point_selected.dart';


class CarouselController extends StatefulWidget {
  final List<Fragment> listViews;
  CarouselController({
    @required this.listViews,
  });
  @override
  State<StatefulWidget> createState() {
    return _CarouselController();
  }
}

class _CarouselController extends State<CarouselController> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              bottom: (MediaQuery.of(context).size.height / 12),
            ),
            child: PageView(
              onPageChanged: (index) => setState(() => _currentIndex = index),
              physics: BouncingScrollPhysics(),
              children: widget.listViews,
            ),
          ),
          BarPointSelected(
              currentIndex: _currentIndex,
              listViews: widget.listViews
                  .map<Widget>((pointer) => PointSelected(
                        currentIndex: _currentIndex,
                        position: widget.listViews.indexOf(pointer),
                      ))
                  .toList())
        ],
      ),
    );
  }
}
