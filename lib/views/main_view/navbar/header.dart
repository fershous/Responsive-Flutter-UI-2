import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Text(
          'LOGO', 
          style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w900
                      ),
        ),
      ],
    );
  }
}