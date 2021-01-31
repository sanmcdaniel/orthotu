import 'package:flutter/material.dart';
import 'package:mobile/constants/styles/theme_data.dart';
import 'package:mobile/views/atoms/carousel_fragment.dart';
import 'package:mobile/views/atoms/carousel_main.dart';
import 'package:mobile/views/layouts/scaffold_layout.dart';
import 'package:mobile/views/molecules/common_logo.dart';

class SurgeryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initializeData();

    return ScaffoldLayout(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'การเปลี่ยนข้อเข่าเทียม',
              style: defaultTextThemeData.headline2,
            ),
          ],
        ),
        toolbarHeight: 60.0,
      ),
      body: Carousel(
        listViews: [
          Fragment(
            child: getCarosel(0),
          ),
          Fragment(
            child: getCarosel(1),
          ),
          Fragment(
            child: getCarosel(2),
          ),
          Fragment(
            child: getCarosel(3),
          )
        ],
      ),
      bottom: GridView.count(
        padding: EdgeInsets.fromLTRB(22.00, 10.00, 22.00, 24.0),
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
    );
  }

  Widget getCarosel(index) {
    return new ListView(
      children: <Widget>[
        new Container(
          height: 210.0,
          margin: const EdgeInsets.fromLTRB(40.0, 90.0, 20.0, 20.0),
          child: Image.asset(
            imagenames.elementAt(index),
          ),
        ),
        new Container(
          height: 100.0,
          margin: const EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 0.0),
          child: Text(
            description.elementAt(0),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }

  List<String> description = List();
  List<String> imagenames = List();

  void initializeData() {
    description.add(
        "การเปลี่ยนข้อเข่าเทียม เป็นวิธีการรักษาข้อเข่าเสื่อมในระยะปานกลางถึงระยะรุนแรงและเป็นวิธีสากลที่ให้ผลการรักษาดีที่สุด สำหรับประเทศไทยมีการผ่าตัดเปลี่ยนผิวข้อเข่าเทียมมานานกว่า 40 ปีแล้ว");
    imagenames.add("assets/images/logo_carousel_1.png");
    description.add(
        "การเปลี่ยนข้อเข่าเทียม เป็นวิธีการรักษาข้อเข่าเสื่อมในระยะปานกลางถึงระยะรุนแรงและเป็นวิธีสากลที่ให้ผลการรักษาดีที่สุด สำหรับประเทศไทยมีการผ่าตัดเปลี่ยนผิวข้อเข่าเทียมมานานกว่า 40 ปีแล้ว");
    imagenames.add("assets/images/logo_carousel_2.png");
    description.add(
        "การเปลี่ยนข้อเข่าเทียม เป็นวิธีการรักษาข้อเข่าเสื่อมในระยะปานกลางถึงระยะรุนแรงและเป็นวิธีสากลที่ให้ผลการรักษาดีที่สุด สำหรับประเทศไทยมีการผ่าตัดเปลี่ยนผิวข้อเข่าเทียมมานานกว่า 40 ปีแล้ว");
    imagenames.add("assets/images/logo_carousel_3.png");
    description.add(
        "การเปลี่ยนข้อเข่าเทียม เป็นวิธีการรักษาข้อเข่าเสื่อมในระยะปานกลางถึงระยะรุนแรงและเป็นวิธีสากลที่ให้ผลการรักษาดีที่สุด สำหรับประเทศไทยมีการผ่าตัดเปลี่ยนผิวข้อเข่าเทียมมานานกว่า 40 ปีแล้ว");
    imagenames.add("assets/images/logo_carousel_4.png");
  }
}
