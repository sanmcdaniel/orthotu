import 'package:flutter/material.dart';
import 'package:mobile/views/layouts/scaffold_layout.dart';

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      appBar: AppBar(
        title: Container(
          child: Text(
            'Hello2',
          ),
        ),
        toolbarHeight: 50,
      ),
      body: Container(),
    );
  }
}
