import 'package:cms/pages/Student/studentSection.dart';
import 'package:flutter/material.dart';
import 'package:cms/constants.dart';
import 'Admission/admissionSection.dart';
import 'Fees/feesSection.dart';
import 'Lecture/lectureSection.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const studentSection(),
    const admissionSection(),
    const feesSection(),
    const lectureSection(),
    const Text(
      'Birthday Book',
      style: optionStyle,
    )
  ];

  void _kOnItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Student',
            backgroundColor: kBackgroundNavigationTabColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Admission',
            backgroundColor: kBackgroundNavigationTabColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_rupee),
            label: 'Fees',
            backgroundColor: kBackgroundNavigationTabColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Lecture',
            backgroundColor: kBackgroundNavigationTabColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.celebration),
            label: 'Birthday Book',
            backgroundColor: kBackgroundNavigationTabColor,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _kOnItemTapped,
      ),
    );
  }
}
