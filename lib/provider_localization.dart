import 'package:flutter/material.dart';

class ProviderLocalization extends ChangeNotifier {
  Locale _locale = Locale('en', 'US');
  Locale get language => _locale;

  void setLanguage(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}