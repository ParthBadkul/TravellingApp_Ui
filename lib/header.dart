import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildListDelegate([
      Container(
        height: size.height / 4,
        color: Colors.black87,
      )
    ]));
  }
}
