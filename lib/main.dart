import 'package:flutter/cupertino.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Cupertino Lists',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Lists'),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: CupertinoListSection(
            children: const [
              CupertinoListTile(title: Text('Simple tile')),
              CupertinoListTile(
                title: Text('Title of the tile'),
                subtitle: Text('Subtitle of the tile'),
              ),
              CupertinoListTile(
                title: Text('With additional info'),
                additionalInfo: Text('Info'),
              ),
              CupertinoListTile(
                title: Text('With leading & trailing'),
                leading: Icon(CupertinoIcons.add_circled_solid),
                trailing: Icon(CupertinoIcons.chevron_forward),
              ),
              CupertinoListTile(
                title: Text('Different background color'),
                backgroundColor: CupertinoColors.activeGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
