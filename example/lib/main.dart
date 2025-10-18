import 'package:flutter/material.dart';
import 'package:flutter_custom_icons/flutter_custom_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Icons Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Custom Icons Demo'),
    );
  }
}

List<IconData> iconixto = [
  Iconixto.add,
  Iconixto.addSolid,
  Iconixto.aI,
  Iconixto.aISolid,
  Iconixto.anchor,
  Iconixto.anchorSolid,
  Iconixto.apple,
  Iconixto.appleSolid,
];

List<IconData> fluentIcons = [
  FluentIcons.add,
  FluentIcons.add_circle,
  FluentIcons.add_square,
  FluentIcons.arrow_down,
  FluentIcons.arrow_left,
  FluentIcons.arrow_right,
  FluentIcons.arrow_up,
  FluentIcons.Iconcard_pos,
];

List<IconData> featherIcons = [
  FeatherIcons.activity,
  FeatherIcons.airplay,
  FeatherIcons.alertOctagon,
  FeatherIcons.cloudRain,
  FeatherIcons.film,
  FeatherIcons.file,
  FeatherIcons.gift,
  FeatherIcons.instagram,
  FeatherIcons.github,
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Iconixto Icons
            Text(
              "Iconixto Icons",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: iconixto
                  .map(
                    (iconData) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(iconData),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 20),
            // New Fluent Icons
            Text(
              "Fluent Icons",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: fluentIcons
                  .map(
                    (iconData) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(iconData),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 20),

            // Feather Icons
            Text(
              "Feather Icons",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: featherIcons
                  .map(
                    (iconData) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(iconData),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
