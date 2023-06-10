import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          "https://img-c.udemycdn.com/course/750x422/3798106_fea1_2.jpg",
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4),
        const Flexible(
          child: AutoSizeText(
            "Criação de Apps Android e iOS com Flutter - Crie 15 Apps.",
            minFontSize: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        const AutoSizeText(
          "Daniel Ciolfi",
          minFontSize: 3,
          style: TextStyle(color: Colors.grey),
        ),
        const AutoSizeText(
          "R\$22,90",
          minFontSize: 3,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
