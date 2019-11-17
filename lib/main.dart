import 'package:flutter/material.dart';
import 'package:flutter_language/locale/my_localization.dart';
import 'package:flutter_language/locale/my_localization_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final MyLocalizationDelegate _myLocalizationDelegate = MyLocalizationDelegate(Locale('en', 'US'));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        _myLocalizationDelegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('id', 'ID'),
      ],
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Localization'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                child: Text('English'),
                onPressed: () {
                  setState(() {
                    MyLocalization.load(Locale('en', 'US'));
                  });
                },
              ),
              Text(MyLocalization.of(context).helloWorld),
              RaisedButton(
                child: Text('Indonesia'),
                onPressed: () {
                  setState(() {
                    MyLocalization.load(Locale('id', 'ID'));
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
