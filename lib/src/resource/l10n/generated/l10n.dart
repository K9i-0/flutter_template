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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class L10n {
  L10n();

  static L10n? _current;

  static L10n get current {
    assert(_current != null,
        'No instance of L10n was loaded. Try to initialize the L10n delegate before accessing L10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L10n();
      L10n._current = instance;

      return instance;
    });
  }

  static L10n of(BuildContext context) {
    final instance = L10n.maybeOf(context);
    assert(instance != null,
        'No instance of L10n present in the widget tree. Did you add L10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static L10n? maybeOf(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  /// `Flutter Template`
  String get appTitle {
    return Intl.message(
      'Flutter Template',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `OSS License`
  String get homeScreenDrawerHeaderLabelOSSLicense {
    return Intl.message(
      'OSS License',
      name: 'homeScreenDrawerHeaderLabelOSSLicense',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get homeScreenDrawerHeaderLabelSettings {
    return Intl.message(
      'Settings',
      name: 'homeScreenDrawerHeaderLabelSettings',
      desc: '',
      args: [],
    );
  }

  /// `Drawer`
  String get homeScreenDrawerHeaderTitle {
    return Intl.message(
      'Drawer',
      name: 'homeScreenDrawerHeaderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homeScreenTitle {
    return Intl.message(
      'Home',
      name: 'homeScreenTitle',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get settingsScreenThemeModeRadioLabelDark {
    return Intl.message(
      'Dark',
      name: 'settingsScreenThemeModeRadioLabelDark',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get settingsScreenThemeModeRadioLabelLight {
    return Intl.message(
      'Light',
      name: 'settingsScreenThemeModeRadioLabelLight',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get settingsScreenThemeModeRadioLabelSystem {
    return Intl.message(
      'System',
      name: 'settingsScreenThemeModeRadioLabelSystem',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsScreenTitle {
    return Intl.message(
      'Settings',
      name: 'settingsScreenTitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<L10n> load(Locale locale) => L10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
