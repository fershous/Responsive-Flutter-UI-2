import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proto_sys_2/views/dashboards/project/project_view.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: ProjectView(),
    );
  }
}