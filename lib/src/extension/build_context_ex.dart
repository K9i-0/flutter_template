import 'package:flutter/material.dart';
import 'package:flutter_template/src/resource/l10n/generated/l10n.dart';

extension BuildContextEx on BuildContext {
  L10n get l10n => L10n.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
