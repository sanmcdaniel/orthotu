import 'package:flutter/material.dart';
import 'package:mobile/constants/styles/styles.dart';
import 'package:mobile/constants/styles/theme_data.dart';
import 'package:mobile/views/layouts/scaffold_layout.dart';
import 'package:mobile/views/molecules/common_card.dart';

class TreatmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'การรักษา',
              style: defaultTextThemeData.headline1.copyWith(
                color: THOR_COLOR_BLACK,
              ),
            ),
          ],
        ),
        toolbarHeight: 60.0,
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/national_cancer_banner.png",
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              0.00,
              37.00,
              0.00,
              40.0,
            ),
            child: Text(
              'การรักษาแบ่งออกเป็น 2 ประเภท ดังนี้',
              style: defaultTextThemeData.headline2,
            ),
          ),
          CommonCard(
            text: "การรักษาโดยการใช้ยา",
            imageName: "logo_pills",
          ),
          CommonCard(
            text: "การรักษาโดยการผ่าตัด",
            imageName: "logo_knife",
          ),
        ],
      ),
    );
  }
}
