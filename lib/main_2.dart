import 'package:flutter/material.dart';
import 'package:flutter_language/locale/my_localization.dart';
import 'package:flutter_language/locale/my_localization_delegate.dart';
import 'package:flutter_language/provider_localization.dart';
import 'package:flutter_language/ui/account/account_screen.dart';
import 'package:flutter_language/ui/home/home_screen.dart';
import 'package:flutter_language/ui/setting/setting_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => ProviderLocalization(),
      child: Consumer<ProviderLocalization>(
        builder: (context, localization, child) {
          return MaterialApp(
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              MyLocalizationDelegate(localization.language),
            ],
            supportedLocales: [
              Locale('en', 'US'),
              Locale('id', 'ID'),
            ],
            home: MyApp(),
          );
        },
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Localization'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexSelected,
        onTap: (indexSelected) {
          setState(() {
            this.indexSelected = indexSelected;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text(MyLocalization.of(context).home),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text(MyLocalization.of(context).account),
            icon: Icon(Icons.account_circle),
          ),
          BottomNavigationBarItem(
            title: Text(MyLocalization.of(context).setting),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: _buildWidgetBody(),
    );
  }

  Widget _buildWidgetBody() {
    switch (indexSelected) {
      case 0:
        return HomeScreen();
      case 1:
        return AccountScreen();
      case 2:
        return SettingScreen();
      default:
        return Container();
    }
  }
}
