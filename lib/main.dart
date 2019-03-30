import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_navigation_bar_example/pages/first_page.dart';
import 'package:curved_navigation_bar_example/pages/second_page.dart';
import 'package:curved_navigation_bar_example/pages/third_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Bottom Navigation',
    home: HOME(),
  ));
}

class HOME extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Bottom_NAV_STATE();
  }
}

class _Bottom_NAV_STATE extends State<HOME> {
  var _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
          setState(() {
            _page = index;
          });
        },
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: PageTransaction(),
        ),
      ),
    );
  }

  Widget PageTransaction() {
    if (_page == 0) {
      return FirstPage();
    } else if (_page == 1) {
      return SecondPage();
    } else if (_page == 2) {
      return ThirdPage();
    }

    return null;
  }
}
