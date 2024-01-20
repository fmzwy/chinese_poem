import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PoemLocalizations {
  PoemLocalizations(this.locale);

  final Locale locale;

  static PoemLocalizations of(BuildContext context) {
    return Localizations.of<PoemLocalizations>(context, PoemLocalizations)!;
  }

  static const _localizedValues = <String, Map<String, String>>{
    'en': {
      'title': 'Chinese Poems',
      'homePage': 'Chinese Poems Home Page',
      'grade.0': '300 Tang poems',
      'grade.1': '1st Grade',
      'grade.2': '2nd Grade',
      'grade.3': '3th Grade',
      'grade.4': '4th Grade',
      'grade.5': '5th Grade',
      'grade.6': '6th Grade',
      'grade.7': '7th Grade',
      'grade.8': '8th Grade',
      'grade.9': '9th Grade',
      'grade.10': '10th Grade',
      'grade.11': '11th Grade',
      'grade.12': '12th Grade',
    },
    'zh': {
      'title': '中国古诗',
      'homePage': '中国古诗首页',
      'grade.0': '唐诗300首',
      'grade.1': '小学一年级',
      'grade.2': '小学二年级',
      'grade.3': '小学三年级',
      'grade.4': '小学四年级',
      'grade.5': '小学五年级',
      'grade.6': '小学六年级',
      'grade.7': '初一',
      'grade.8': '初二',
      'grade.9': '初三',
      'grade.10': '高一',
      'grade.11': '高二',
      'grade.12': '高三',
    },
  };

  static List<String> languages() => _localizedValues.keys.toList();

  String get title {
    return _localizedValues[locale.languageCode]!['title']!;
  }

  String get homePage {
    return _localizedValues[locale.languageCode]!['homePage']!;
  }

  String getGrade(int num) {
    return _localizedValues[locale.languageCode]!['grade.$num']!;
  }
}

class PoemLocalizationsDelegate
    extends LocalizationsDelegate<PoemLocalizations> {
  const PoemLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      PoemLocalizations.languages().contains(locale.languageCode);

  @override
  Future<PoemLocalizations> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of DemoLocalizations.
    return SynchronousFuture<PoemLocalizations>(PoemLocalizations(locale));
  }

  @override
  bool shouldReload(PoemLocalizationsDelegate old) => false;
}
