import 'package:flutter/material.dart';
import 'package:mobile/views/layouts/scaffold_layout.dart';

class WaitingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      appBar: AppBar(
        title: Container(
          child: Text(
            'HelloApp',
          ),
        ),
        toolbarHeight: 50,
      ),
      body: Container(
        child: Container(),
      ),
      bottom: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
