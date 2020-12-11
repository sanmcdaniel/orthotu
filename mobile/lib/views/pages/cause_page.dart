import 'package:flutter/material.dart';
import 'package:mobile/views/layouts/scaffold_layout.dart';
import 'package:mobile/views/main_routes.dart';
import 'package:mobile/views/molecules/common_logo.dart';

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
            ),
          ],
        ),
        toolbarHeight: 60.0,
      ),
      body: Column(
        children: [
          
          GridView.count(
            crossAxisSpacing: 29,
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 3,
            children: [
              CommonLogo(
                onTap: () =>
                    Navigator.pushNamed(context, RouteName.waiting.name),
                text: "กลับสู่หน้าหลัก",
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
          )
        ],
      ),
    );
  }
}
