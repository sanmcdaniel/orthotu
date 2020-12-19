import 'package:flutter/material.dart';

class CommonLogoWithWord extends StatelessWidget {
  final String text;
  final String imageName;
  final double size;
  final double paddingRight;
  final double paddingBottom;

  const CommonLogoWithWord({
    Key key,
    this.text,
    this.imageName,
    this.size,
    this.paddingRight,
    this.paddingBottom,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom),
      child: Row(
        children: [
          Image.asset(
            'assets/images/$imageName.png',
            fit: BoxFit.contain,
            height: size,
            width: size,
          ),
          Padding(
            padding: EdgeInsets.only(right: paddingRight),
          ),
          Expanded(
            child: Text(
              '$text',
            ),
          )
        ],
      ),
    );
  }
}
