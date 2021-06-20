import 'package:flutter/material.dart';

import 'main_view.dart';

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
    required this.size,
    required this.widget,
  }) : super(key: key);

  final Size size;
  final MainView widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.9,
      color: Color.fromRGBO(241,245,249, 1.0),
      child: widget.content
    );
  }
}