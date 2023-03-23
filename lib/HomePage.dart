import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hey/hotels.dart';
import 'DestinationCoursle.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({super.key});
  int _selectedIndex = 0;

  List<IconData> _icon = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.hiking,
    FontAwesomeIcons.biking,
  ];

  @override
  Widget build(BuildContext context) {
    Widget _buildIcon(int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
          // print(index);
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            _icon[index],
            size: 25,
            color: Theme.of(context).primaryColor,
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          primary: true,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(vertical: 30),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 20),
              child: Text(
                'What would you like to find ? ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icon
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 25,
            ),
            DestinationCoursel(),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 380,
              child: TopHotels(),
            )
          ],
        ),
      ),
    );
  }
}
