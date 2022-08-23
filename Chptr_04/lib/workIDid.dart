import 'package:flutter/material.dart';

Widget titleSection = Padding(
  padding: const EdgeInsets.all(50),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Oeschinen Lake Campground',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Kandersteg, Switzerland')
          ],
        ),
      ),
      Column(
        children: const [
          Icon(
            Icons.star,
            color: Colors.red,
          )
        ],
      ),
      Column(
        children: [Text('41')],
      ),
    ],
  ),
);
Widget buttonSection = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 25),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.call,
            color: Colors.blue,
          ),
          Text('Call')
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.near_me,
            color: Colors.blue,
          ),
          Text('Route')
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.share,
            color: Colors.blue,
          ),
          Text('Share')
        ],
      ),
    ],
  ),
);
Widget textSection = const Padding(
  padding: EdgeInsets.all(40),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the s.',
    style: TextStyle(fontWeight: FontWeight.w300),
  ),
);

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context) //
                  .primaryTextTheme
                  .headline6,
            ),
          ),
          Image.network(
            'https://i.pinimg.com/originals/20/c4/ed/20c4ed904c96d955c7baed21e22d47e0.jpg',
            color: Colors.orangeAccent,
            colorBlendMode: BlendMode.softLight,
          ),
          titleSection,
          buttonSection,
          textSection
        ],
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}
