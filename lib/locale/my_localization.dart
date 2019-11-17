import 'package:flutter/material.dart';
import 'package:flutter_language/l10n/messages_all.dart';
import 'package:intl/intl.dart';

class MyLocalization {
  static Future<MyLocalization> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return MyLocalization();
    });
  }

  static MyLocalization of (BuildContext context) {
    return Localizations.of<MyLocalization>(context, MyLocalization);
  }

  String get helloWorld {
    return Intl.message(
      'Hello World',
      name: 'helloWorld',
      desc: 'Word Hello World', /* Optional */
    );
  }

  String get homeScreen {
    return Intl.message(
      'Home Screen',
      name: 'homeScreen',
      desc: '',
    );
  }

  String get accountScreen {
    return Intl.message(
      'Account Screen',
      name: 'accountScreen',
      desc: '',
    );
  }

  String get settingScreen {
    return Intl.message(
      'Setting Screen',
      name: 'settingScreen',
      desc: '',
    );
  }

  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
    );
  }

  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
    );
  }

  String get setting {
    return Intl.message(
      'Setting',
        name: 'setting',
      desc: '',
    );
  }
}