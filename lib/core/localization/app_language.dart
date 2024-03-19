import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helper/preference/shared_prafrance_manager.dart';

class AppLanguage extends ChangeNotifier {
  Locale _appLocale = const Locale('ar');

  Locale get appLocal => _appLocale;

  String get platformLocale {
    final mobileLocale = Platform.localeName.split('_').first;
    if (mobileLocale.contains('ar')) {
      return 'ar';
    } else if (mobileLocale.contains('en')) {
      return 'en';
    } else {
      return 'ar';
    }
  }

  Future<void> fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString('language_code') == null) {
      _appLocale = Locale(platformLocale);
      await SharedPreferenceManager().setData('language_code', platformLocale);
    } else {
      _appLocale = Locale(prefs.getString('language_code')!);
    }
    notifyListeners();
  }

  Future<void> changeLanguage(Locale type) async {
    if (_appLocale == type) {
      return;
    }

    switch (type.languageCode) {
      case 'ar':
        {
          _appLocale = const Locale('ar');
          await SharedPreferenceManager().setData('language_code', 'ar');
        }
        break;
      case 'en':
      default:
        {
          _appLocale = const Locale('en');
          await SharedPreferenceManager().setData('language_code', 'en');
        }
        break;
    }
    notifyListeners();
  }

  static String get getLanguageCode {
    final currentLocale = Intl.getCurrentLocale();
    if (currentLocale.contains('ar')) {
      return 'ar';
    } else {
      return 'en';
    }
  }
}
