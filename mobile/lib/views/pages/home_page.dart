import 'package:flutter/material.dart';
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
              height: 30,
              width: 40,
            ),
            Text(
              'โรคข้อเข่าเสื่อม',
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
                      child: Text(
                        "โรคข้อเข่าเสื่อม",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                Text(
                  "เป็นโรคที่พบได้บ่อยมากในผู้สูงอายุ ทำให้เกิดอาการปวดเข่า บวมแดง เข่าฝืดยึด มีเสียงดังในเข่า ไม่สามารถประกอบกิจวัตรประจำวันได้อย่างปกติ ซึ่งมีความรุนแรงมากน้อยต่างกันไป",
                ),
                Text(
                  "สาเหตุเกิดจากมีการทำลายของกระดูกอ่อน บริเวณผิวข้อ ทำให้กระดูกอ่อนมีการบางตัวและเสียไป ซึ่งเกิดจากหลายสาเหตุ ตัวอย่างเช่น",
                ),
                Text(
                  "- การใช้งานเข่าที่ไม่ถูกต้องตั้งแต่วัยหนุ่มสาว",
                ),
                Text(
                  "- การที่มีน้ำหนักตัวมากๆ",
                ),
                Text(
                  "- เคยได้รับอุบัติเหตุบริเวณข้อเข่ามาก่อน",
                ),
                Text(
                  "- เคยมีการอักเสบติดเชื้อ หรือเป็นโรคไขข้อบางชนิด",
                ),
                Container(
                  height: 20,
                ),
                GridView.count(
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
                      text: "การรักษา",
                      imageName: "logo_syringe",
                    ),
                    CommonLogo(
                      text: "การดูแล",
                      imageName: "logo_heart",
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
