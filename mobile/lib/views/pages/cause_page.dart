import 'package:flutter/material.dart';
import 'package:mobile/constants/styles/theme_data.dart';
import 'package:mobile/views/layouts/scaffold_layout.dart';
import 'package:mobile/views/main_routes.dart';
import 'package:mobile/views/molecules/common_logo.dart';
import 'package:mobile/views/molecules/common_logo_with_word.dart';

class CausePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ปัจจัยที่ทำให้เกิดข้อเข่าเสื่อม',
              style: defaultTextThemeData.headline2,
            ),
          ],
        ),
        toolbarHeight: 60.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(22.00, 26.00, 22.00, 0),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(13.00, 0.00, 13.00, 0),
                child: Column(
                  children: [
                    CommonLogoWithWord(
                      imageName: 'logo_circle_word',
                      text:
                          'อายุมากมีโอกาสเป็นมาก\nเนื่องจากอายุการใช้งานข้อเข่ามาก',
                    ),
                    CommonLogoWithWord(
                      imageName: 'logo_woman',
                      text: 'เพศหญิง\nจะเป็นโรคเข่าเสื่อมมากกว่าผู้ชาย 2 เท่า',
                    ),
                    CommonLogoWithWord(
                      imageName: 'logo_weighing_scale',
                      text: 'น้ำหนัก\nยิ่งน้ำหนักตัวมากข้อเข่าจะเสื่อมเร็วา',
                    ),
                    CommonLogoWithWord(
                      imageName: 'logo_man',
                      text:
                          'ท่านั่ง\nผู้ที่นั่งยองๆ\nนั่งขัดสมาธิหรือนั่งพับเพียบนานๆ\nจะพบข้อเข่าเสื่อมเร็ว',
                    ),
                    CommonLogoWithWord(
                      imageName: 'logo_joint',
                      text:
                          'บาดเจ็บบริเวณข้อเข่า\nผู้ที่ได้รับบาดเจ็บจากกระดูกข้อเข่าแตก\nหรือเอ็นฉีก มีโอกาสเกิดเกิดข้อเข่าเสื่อมได้',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
              onTap: () => Navigator.pop(context),
              text: "กลับสู่เมนูหลัก",
              imageName: "logo_home",
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
      ),
    );
  }
}
