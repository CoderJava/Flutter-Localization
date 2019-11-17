import 'package:flutter/material.dart';
import 'package:flutter_language/locale/my_localization.dart';

class MyLocalizationDelegate extends LocalizationsDelegate<MyLocalization> {
  final Locale locale;

  const MyLocalizationDelegate(this.locale);

  @override
  bool isSupported(Locale locale) {
    return ['en', 'id'].contains(locale.languageCode);
  }

  @override
  Future<MyLocalization> load(Locale locale) {
    return MyLocalization.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<MyLocalization> old) {
    return false;
  }
}