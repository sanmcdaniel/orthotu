import 'package:flutter/material.dart';
import 'package:mobile/views/layouts/scaffold_layout.dart';
import 'package:mobile/views/pages/empty_page.dart';

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
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EmptyPage()),
            ),
          },
          color: Colors.blue,
          child: Text(
            'Raised Button',
            style: TextStyle(color: Colors.white),
          ),
        ),
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
