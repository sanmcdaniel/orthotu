import 'package:flutter/material.dart';
import 'package:mobile/constants/styles/styles.dart';
import 'package:mobile/constants/styles/theme_data.dart';
import 'package:mobile/views/enhances/list_view.dart';
import 'package:mobile/views/layouts/scaffold_layout.dart';
import 'package:mobile/views/molecules/common_logo.dart';
import 'package:mobile/views/molecules/common_logo_with_word.dart';
import 'package:mobile/views/molecules/common_text_with_dotted.dart';

class TreatmentContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool addAutomaticKeepAlives;
    return ScaffoldLayout(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'การรักษาโดยใช้ยา',
              style: defaultTextThemeData.headline2.copyWith(
                color: THOR_COLOR_BLACK,
              ),
            ),
          ],
        ),
        toolbarHeight: 60.0,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/medical_banner.png"),
              fit: BoxFit.cover),
        ),
        child: ListViewLayout(
          listWidget: Padding(
            padding: EdgeInsets.fromLTRB(22.00, 26.00, 12.00, 22.00),
            child: Column(
              children: [
                CommonTextWithDotted(
                  text:
                      "ยาแก้ปวดพาราเซตามอล\nเป็นยาที่ควรเลือกใช้ เพราะให้ประสิทธิผลดี และปลอดภัย",
                ),
                CommonTextWithDotted(
                  text:
                      "ยาทาเฉพาะที่ประเภทยาแก้ปวด\nและต้านการอักเสบที่ไม่ใช่สเตียรอยด์",
                ),
                CommonTextWithDotted(
                  text:
                      "ยาต้านการอักเสบที่ไม่ใช่สเตียรอยด์(NSAIDs)\nในรูปของยารับประทาน และยาฉีด",
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(12.00, 0.00, 12.00, 0.0),
                  child: CommonLogoWithWord(
                    paddingBottom: 12,
                    paddingRight: 18,
                    size: 25,
                    imageName: 'logo_warning',
                    text:
                        "ควรใช้ยาอย่างระมัดระวัง โดยเฉพาะใน\nผู้สูงอายุเนื่องจากมีผลต่อหัวใจ ไต และกระเพาะอาหาร",
                  ),
                ),
                CommonTextWithDotted(
                  text:
                      "ยาคลายกล้ามเนื้อ\nการอักเสบทำให้กล้ามเนื้อโดยรอบเกร็งตึงได้\nยาคลายกล้ามเนื้อจะช่วยลดอาการเหล่านี้ได้",
                ),
                CommonTextWithDotted(
                  text:
                      "ยาแก้ปวดที่เข้าด้วยอนุพันธ์ฝิ่น ใช้ในกรณีปวดรุนแรง\nหรือผู้ที่มีโรคประจำตัว",
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(12.00, 0.00, 12.00, 0.0),
                  child: CommonLogoWithWord(
                    paddingBottom: 12,
                    paddingRight: 18,
                    size: 25,
                    imageName: 'logo_warning',
                    text:
                        "มีผลข้างเคียงได้แก่ ท้องผูก คลื่นไส้อาเจียน\nง่วงซึม เวียนศีรษะ",
                  ),
                ),
                CommonTextWithDotted(
                  text:
                      "ยาพยุงหรือลดความเสื่อม เช่น Glucosamine sulfate,Diacerein,น้ำไขข้อเทียม\n(Hyaluronic acid) สามารถลดอาการปวด และอาจเปลี่ยน โครงสร้างกระดูกอ่อนข้อต่อ",
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(12.00, 0.00, 12.00, 0.0),
                  child: CommonLogoWithWord(
                    paddingBottom: 12,
                    paddingRight: 18,
                    size: 25,
                    imageName: 'logo_warning',
                    text:
                        "ยากลุ่มนี้ออกฤทธิ์ช้า ไม่ควรใช้ในผู้ที่\nข้อเสื่อมรุนแรงปัจจุบันผลการรักษายังไม่แน่นอน",
                  ),
                ),
                CommonTextWithDotted(
                  text:
                      "ยาฉีดสเตียรอยด์เข้าข้อ สามารถลดอาการปวด\nไม่ควรฉีดประจำ เนื่องจากจะทำลายกระดูกอ่อนข้อต่อได้",
                ),
                GridView.count(
                  padding: EdgeInsets.only(bottom: 20.0),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
