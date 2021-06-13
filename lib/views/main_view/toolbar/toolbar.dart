import 'package:flutter/material.dart';

import 'actions.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({
    Key? key,
    required double width,
    required this.size, 
    required this.drawer,
  }) : _width = width, super(key: key);

  final double _width;
  final Size size;
  final drawer;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: EdgeInsets.symmetric(horizontal: 16),
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
      color: Colors.white70,
      width: _width,
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu), 
            onPressed: () => drawer()
          ),
          ToolbarActions(),
        ],
      ),
    );
  }
}
