import 'package:flutter/material.dart';

import 'nav_button.dart';
import 'nav_section.dart';

class Navigation extends StatelessWidget {
  const Navigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListBody(
      mainAxis: Axis.vertical,
      children: [
        NavigationSection(title: 'DASHBOARDS', subtitle: 'Unique made application designs',),
        SizedBox(height: 10,),
        NavigationButton(title: 'Project', icon: Icons.insert_drive_file_outlined,),
        NavigationButton(title: 'Analytics', icon: Icons.bubble_chart_outlined),
      ],
    );
  }
}
