import 'package:flutter/material.dart';
import 'package:mobile/views/molecules/common_bullet.dart';

class CommonTextWithDotted extends StatelessWidget {
  final String text;
  final String imageName;

  const CommonTextWithDotted({
    Key key,
    this.text,
    this.imageName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          CommonBullet(),
          Padding(
            padding: EdgeInsets.only(right: 26.0),
          ),
          Expanded(
            child: Text(
              '$text',
              maxLines: 4,
            ),
          )
        ],
      ),
    );
  }
}
