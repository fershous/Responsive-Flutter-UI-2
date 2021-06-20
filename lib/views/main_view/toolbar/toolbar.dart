import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:proto_sys_2/controllers/navbar_controller.dart';

import 'actions.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({
    Key? key,
    required this.size, 
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {

    NavbarController navbarController = Get.find<NavbarController>();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Colors.white70,
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu), 
            onPressed: () => {
              navbarController.setWidth(size.width)
            }
          ),
          ToolbarActions(),
        ],
      ),
    );
  }
}
