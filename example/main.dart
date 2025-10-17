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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Iconixto Icons:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              // Display icons in a grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  padding: const EdgeInsets.all(20),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    _buildIconCard(context, Iconixto.home, 'home'),
                    _buildIconCard(context, Iconixto.home2, 'home2'),
                    _buildIconCard(context, Iconixto.home3, 'home3'),
                    _buildIconCard(context, Iconixto.home4, 'home4'),
                    _buildIconCard(context, Iconixto.link, 'link'),
                    _buildIconCard(context, Iconixto.link1, 'link1'),
                    _buildIconCard(context, Iconixto.link2, 'link2'),
                    _buildIconCard(context, Iconixto.link3, 'link3'),
                    _buildIconCard(context, Iconixto.cog1, 'cog1'),
                    _buildIconCard(context, Iconixto.cog2, 'cog2'),
                    _buildIconCard(context, Iconixto.zoomPlus, 'zoomPlus'),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Feather Icons:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              // Display icons in a grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  padding: const EdgeInsets.all(20),
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    _buildIconCard(context, FeatherIcons.activity, 'activity'),
                    _buildIconCard(context, FeatherIcons.airplay, 'airplay'),
                    _buildIconCard(
                      context,
                      FeatherIcons.alertCircle,
                      'alertCircle',
                    ),
                    _buildIconCard(
                      context,
                      FeatherIcons.alertOctagon,
                      'alertOctagon',
                    ),
                    _buildIconCard(
                      context,
                      FeatherIcons.alertTriangle,
                      'alertTriangle',
                    ),
                    _buildIconCard(
                      context,
                      FeatherIcons.alignCenter,
                      'alignCenter',
                    ),
                    _buildIconCard(
                      context,
                      FeatherIcons.alignJustify,
                      'alignJustify',
                    ),
                    _buildIconCard(
                      context,
                      FeatherIcons.alignLeft,
                      'alignLeft',
                    ),
                    _buildIconCard(
                      context,
                      FeatherIcons.alignRight,
                      'alignRight',
                    ),
                    _buildIconCard(context, FeatherIcons.anchor, 'anchor'),
                    _buildIconCard(context, FeatherIcons.aperture, 'aperture'),
                    _buildIconCard(context, FeatherIcons.archive, 'archive'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconCard(BuildContext context, IconData icon, String name) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
