import 'package:flutter/material.dart';
import 'package:interface_responsiva/breakpoins.dart';
import 'package:interface_responsiva/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:interface_responsiva/home/widgets/app_bar/web_app_bar.dart';
import 'package:interface_responsiva/home/widgets/sections/advantages_sections.dart';
import 'package:interface_responsiva/home/widgets/sections/courses_section.dart';
import 'package:interface_responsiva/home/widgets/sections/top_section.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constrains.maxWidth < tabletBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBar(),
                ),
          drawer:
              constrains.maxWidth < tabletBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
