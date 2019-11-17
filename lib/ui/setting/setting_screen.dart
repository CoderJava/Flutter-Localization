import 'package:flutter/material.dart';
import 'package:flutter_language/locale/my_localization.dart';
import 'package:flutter_language/provider_localization.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerLocalization = Provider.of<ProviderLocalization>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(
              child: Text('English'),
              onPressed: () {
                MyLocalization.load(Locale('en', 'US'));
                providerLocalization.setLanguage(Locale('en', 'US'));
              },
            ),
            Text(MyLocalization.of(context).settingScreen),
            RaisedButton(
              child: Text('Indonesia'),
              onPressed: () {
                MyLocalization.load(Locale('id', 'ID'));
                providerLocalization.setLanguage(Locale('id', 'ID'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
