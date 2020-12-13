import 'package:flutter/material.dart';

class CommonLogoWithWord extends StatelessWidget {
  final String text;
  final String imageName;

  const CommonLogoWithWord({
    Key key,
    this.text,
    this.imageName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 29),
      child: Row(
        children: [
          Image.asset(
            'assets/images/$imageName.png',
            fit: BoxFit.contain,
            height: 50,
            width: 50,
          ),
          Padding(
            padding: EdgeInsets.only(right: 40.0),
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
