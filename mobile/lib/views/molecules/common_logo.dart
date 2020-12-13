import 'package:flutter/material.dart';
import 'package:mobile/constants/styles/styles.dart';
import 'package:mobile/constants/styles/theme_data.dart';

class CommonLogo extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onTap;

  const CommonLogo({Key key, this.text, this.imageName, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: THOR_COLOR_GREY,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/$imageName.png',
                  fit: BoxFit.contain,
                  height: 50,
                  width: 50,
                ),
                Text(
                  "$text",
                  style: defaultTextThemeData.bodyText2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
