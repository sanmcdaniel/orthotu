import 'package:flutter/material.dart';
import 'package:mobile/constants/styles/styles.dart';
import 'package:mobile/constants/styles/theme_data.dart';
import 'package:mobile/views/layouts/scaffold_layout.dart';
import 'package:mobile/views/main_routes.dart';
import 'package:mobile/views/molecules/common_logo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/broken_bone.png",
              height: 50,
              width: 50,
            ),
            Text(
              'โรคข้อเข่าเสื่อม',
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
            "assets/images/main_banner.png",
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(22.00, 26.00, 22.00, 22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text("โรคข้อเข่าเสื่อม",
                          style: defaultTextThemeData.bodyText1),
                    ),
                  ],
                ),
                Text(
                  "เป็นโรคที่พบได้บ่อยมากในผู้สูงอายุ ทำให้เกิดอาการปวดเข่า บวมแดง เข่าฝืดยึด มีเสียงดังในเข่า ไม่สามารถประกอบกิจวัตรประจำวันได้อย่างปกติ ซึ่งมีความรุนแรงมากน้อยต่างกันไป",
                  style: defaultTextThemeData.bodyText2,
                ),
                Text(
                  "สาเหตุเกิดจากมีการทำลายของกระดูกอ่อน บริเวณผิวข้อ ทำให้กระดูกอ่อนมีการบางตัวและเสียไป ซึ่งเกิดจากหลายสาเหตุ ตัวอย่างเช่น",
                  style: defaultTextThemeData.bodyText2,
                ),
                Text(
                  "- การใช้งานเข่าที่ไม่ถูกต้องตั้งแต่วัยหนุ่มสาว",
                  style: defaultTextThemeData.bodyText2,
                ),
                Text(
                  "- การที่มีน้ำหนักตัวมากๆ",
                  style: defaultTextThemeData.bodyText2,
                ),
                Text(
                  "- เคยได้รับอุบัติเหตุบริเวณข้อเข่ามาก่อน",
                  style: defaultTextThemeData.bodyText2,
                ),
                Text(
                  "- เคยมีการอักเสบติดเชื้อ หรือเป็นโรคไขข้อบางชนิด",
                  style: defaultTextThemeData.bodyText2,
                ),
                Container(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
      bottom: Padding(
        padding: EdgeInsets.fromLTRB(22.00, 0.00, 22.00, 0.0),
        child: GridView.count(
          crossAxisSpacing: 29,
          shrinkWrap: true,
          primary: false,
          crossAxisCount: 3,
          children: [
            CommonLogo(
              onTap: () =>
                  Navigator.pushNamed(context, RouteName.causePage.name),
              text: "สาเหตุ",
              imageName: "logo_jingle",
            ),
            CommonLogo(
              onTap: () =>
                  Navigator.pushNamed(context, RouteName.treatmentPage.name),
              text: "การรักษา",
              imageName: "logo_syringe",
            ),
            CommonLogo(
              text: "การดูแล",
              imageName: "logo_heart",
            ),
          ],
        ),
      ),
    );
  }
}
