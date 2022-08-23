import 'package:flutter/material.dart';
import 'package:my_app/frdy_theme.dart';
import 'author_card.dart';

class CardTwo extends StatelessWidget {
  const CardTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(15),
        constraints: const BoxConstraints.expand(width: 350, height: 550),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/card-two-bg.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            const AuthorCard(
              imageProvider: AssetImage('assets/avatar.jpeg'),
              authorName: 'Mohamed Farid',
              title: 'Baker & Spatzle Master',
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipee',
                      style: FrdyTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Breads',
                        style: FrdyTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
