import 'package:flutter/material.dart';

import 'package:proto_sys_2/views/main_view/main_view.dart';
import 'package:proto_sys_2/widgets/content_header/content_header.dart';

import 'project_content.dart';

class ProjectView extends StatelessWidget {

  const ProjectView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;

    return MainView(
      content: SingleChildScrollView(
        child: ListBody(
          mainAxis: Axis.vertical,
          children: [
            ContentHeader(),
            ProjectContent(size: size),
          ],
        ),
      ),
    );
  }
}
