import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:techup/models/header_item.dart';
import 'package:techup/pages/home/home.dart';
import 'package:techup/utils/globals.dart';
import 'package:techup/utils/screen_helper.dart';

List<HeaderItem> headerItems = [
  HeaderItem(title: "Home", onTap: () {}),
  HeaderItem(title: "Etkinlik Programı", onTap: () {}),
  HeaderItem(title: "Vizyonumuz ve Misyonumuz", onTap: () {})
];

class HeaderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [Condition.largerThan(name: MOBILE)],
      child: Row(
          children: headerItems
              .map((item) => MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      margin: EdgeInsets.only(right: 50),
                      child: GestureDetector(
                          onTap: item.onTap,
                          child: Text(
                            item.title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ))
              .toList()),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: buildHeader(),
        ),

        mobile: buildMobileHeader(),
        tablet: buildHeader(),
      ),
    );
  }

  Widget buildMobileHeader() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Globals.scaffoldKey.currentState.openEndDrawer();
              },
              child: Icon(
                FlutterIcons.menu_fea,
                color: Colors.white,
                size: 28.0
              )
            )
          ],
        ),
      )
    );
  }

  Widget buildHeader() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [HeaderRow()],
        ));
  }
}
