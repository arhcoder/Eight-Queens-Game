// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `EIGHT QUEENS GAME`
  String get app_title {
    return Intl.message(
      'EIGHT QUEENS GAME',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get button_reset {
    return Intl.message(
      'Reset',
      name: 'button_reset',
      desc: '',
      args: [],
    );
  }

  /// `Solve`
  String get button_solve {
    return Intl.message(
      'Solve',
      name: 'button_solve',
      desc: '',
      args: [],
    );
  }

  /// `How to play`
  String get button_howToPlay {
    return Intl.message(
      'How to play',
      name: 'button_howToPlay',
      desc: '',
      args: [],
    );
  }

  /// `How to play`
  String get howToPlay_title {
    return Intl.message(
      'How to play',
      name: 'howToPlay_title',
      desc: '',
      args: [],
    );
  }

  /// `Put EIGHT queens in the chessboard.\n\n• Queens must not attack each other.\n• Queens attack cross and diagonal.\n• Click on a square to place a queen.`
  String get howToPlay_description {
    return Intl.message(
      'Put EIGHT queens in the chessboard.\n\n• Queens must not attack each other.\n• Queens attack cross and diagonal.\n• Click on a square to place a queen.',
      name: 'howToPlay_description',
      desc: '',
      args: [],
    );
  }

  /// `Got it!`
  String get howToPlay_button {
    return Intl.message(
      'Got it!',
      name: 'howToPlay_button',
      desc: '',
      args: [],
    );
  }

  /// `About...`
  String get button_about {
    return Intl.message(
      'About...',
      name: 'button_about',
      desc: '',
      args: [],
    );
  }

  /// `About...`
  String get about_title {
    return Intl.message(
      'About...',
      name: 'about_title',
      desc: '',
      args: [],
    );
  }

  /// `Developed by Alejandro Ramos | @arhcoder.\n\n• Special thanks to Sriram Thiagarajan.\n• Icons taken from Flaticon.com.\n• Made with Flutter 💙`
  String get about_description {
    return Intl.message(
      'Developed by Alejandro Ramos | @arhcoder.\n\n• Special thanks to Sriram Thiagarajan.\n• Icons taken from Flaticon.com.\n• Made with Flutter 💙',
      name: 'about_description',
      desc: '',
      args: [],
    );
  }

  /// `Got it!`
  String get about_button {
    return Intl.message(
      'Got it!',
      name: 'about_button',
      desc: '',
      args: [],
    );
  }

  /// `Source code`
  String get button_github {
    return Intl.message(
      'Source code',
      name: 'button_github',
      desc: '',
      args: [],
    );
  }

  /// `Source code`
  String get github_title {
    return Intl.message(
      'Source code',
      name: 'github_title',
      desc: '',
      args: [],
    );
  }

  /// `Want to check out the Dart/Flutter source code for this project?\n`
  String get github_description {
    return Intl.message(
      'Want to check out the Dart/Flutter source code for this project?\n',
      name: 'github_description',
      desc: '',
      args: [],
    );
  }

  /// `View code.`
  String get github_yesButton {
    return Intl.message(
      'View code.',
      name: 'github_yesButton',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get github_noButton {
    return Intl.message(
      'No',
      name: 'github_noButton',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations! You won the game...`
  String get winMessage {
    return Intl.message(
      'Congratulations! You won the game...',
      name: 'winMessage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}