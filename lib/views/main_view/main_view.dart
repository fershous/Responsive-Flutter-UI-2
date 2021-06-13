import 'package:flutter/material.dart';
import 'package:proto_sys_2/responsive.dart';

import 'content.dart';
import 'navbar/header.dart';
import 'navbar/navbar.dart';
import 'navbar/navigation.dart';
import 'toolbar/toolbar.dart';

class MainView extends StatefulWidget {

  final Widget content;
  
  const MainView({ 
    Key? key,
    required this.content 
  }) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with SingleTickerProviderStateMixin {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool flex = true;

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    double _width;
    flex && !Responsive.isMobile(context) ? _width = size.width * 0.80 : _width = size.width;

    drawer() =>
      setState(() {
        if(!Responsive.isMobile(context)) {
          flex = !flex;
          flex ? _width = size.width * 0.80 : _width = size.width;
        } else {
          _scaffoldKey.currentState!.openDrawer();
        }
      });

    return Scaffold(
      key: _scaffoldKey,
      drawer: Responsive.isMobile(context) ? 
              Drawer(
                child: Container(
                  padding: EdgeInsets.all(15),
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
              ) : null,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(!Responsive.isMobile(context))
            NavBar(size: size, flex: flex),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeIn,
              height: size.height,
              width: _width,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Toolbar(width: _width, size: size, drawer: drawer,),
                    MainContent(width: _width, size: size, widget: widget),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
