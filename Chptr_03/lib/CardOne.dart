import 'package:flutter/material.dart';
import 'package:my_app/frdy_theme.dart';

class CardOne extends StatelessWidget {
  const CardOne({Key? key}) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'Baking in the Making';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Mohamed Flutter';

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(15),
        constraints: const BoxConstraints.expand(width: 350, height: 550),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bread.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Stack(
          children: [
            Text(category, style: FrdyTheme.darkTextTheme.bodyText1),
            Positioned(
              top: 20,
              child: Text(title, style: FrdyTheme.darkTextTheme.headline5),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child:
                  Text(description, style: FrdyTheme.darkTextTheme.bodyText1),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Text(chef, style: FrdyTheme.darkTextTheme.bodyText1),
            ),
          ],
        ),
      ),
    );
  }
}
