import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:proto_sys_2/controllers/navbar_controller.dart';

import 'header.dart';
import 'navigation.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.size,
    required this.flex,
  }) : super(key: key);

  final Size size;
  final bool flex;

  @override
  Widget build(BuildContext context) {
    
    NavbarController navbarController = Get.find<NavbarController>();

    return Obx(
      () =>
        AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        height: size.height,
        width: navbarController.flex.value ? size.width * 0.20 : 0,
        color: Colors.black,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              left: navbarController.flex.value ? 0 : -(size.width * 0.15),
              child: Container(
                padding: EdgeInsets.all(15),
                width: size.width * 0.20,
                height: size.height,
                color: Color.fromRGBO(15, 23, 42, 1.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Header(),
                    ),
                    SizedBox(height: 32,),
                    Navigation(),
                  ],
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
