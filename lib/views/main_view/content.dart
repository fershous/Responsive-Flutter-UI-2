import 'package:flutter/material.dart';

import 'main_view.dart';

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
    required double width,
    required this.size,
    required this.widget,
  }) : _width = width, super(key: key);

  final double _width;
  final Size size;
  final MainView widget;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
      width: _width,
      height: size.height * 0.9,
      color: Color.fromRGBO(241,245,249, 1.0),
      child: widget.content
    );
  }
}