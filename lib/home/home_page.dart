import 'package:flutter/material.dart';
import 'package:interface_responsiva/breakpoins.dart';
import 'package:interface_responsiva/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:interface_responsiva/home/widgets/app_bar/web_app_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Scaffold(
          appBar: constrains.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBar(),
                ),
          drawer:
              constrains.maxWidth < mobileBreakpoint ? const Drawer() : null,
        );
      },
    );
  }
}
