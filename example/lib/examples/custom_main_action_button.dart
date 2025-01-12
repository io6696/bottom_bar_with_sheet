import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(child: Text("Place for your content")),
      bottomNavigationBar: BottomBarWithSheet(
        selectedIndex: _selectedIndex,
        sheetChild: Center(child: Text("Place for your another content")),
        bottomBarTheme: BottomBarTheme(
          height: 70,
          heightClosed: 70,
          mainButtonPosition: MainButtonPosition.middle,
          itemIconColor: Colors.grey,
          selectedItemIconColor: Colors.red,
        ),
        mainActionButtonTheme: MainActionButtonTheme(
          transform: Matrix4.translationValues(0, -30, 0),
        ),
        mainActionButton: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'Open',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        onSelectItem: (index) => setState(() => _selectedIndex = index),
        items: [
          BottomBarWithSheetItem(icon: Icons.settings),
          BottomBarWithSheetItem(icon: Icons.favorite),
        ],
      ),
    );
  }
}
