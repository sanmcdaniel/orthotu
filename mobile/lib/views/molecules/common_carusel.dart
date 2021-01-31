import 'package:flutter/material.dart';

class CommonCarousel extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onTap;

  const CommonCarousel({Key key, this.text, this.imageName, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          height: 210.0,
          margin: const EdgeInsets.fromLTRB(20.0, 90.0, 20.0, 0.0),
          child: Image.asset(
            'assets/images/$imageName.png',
          ),
        ),
        new Container(
          height: 100.0,
          margin: const EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 0.0),
          child: Text(
            "$text",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
