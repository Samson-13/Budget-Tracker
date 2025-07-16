import 'package:budget_tracker/l10n/app_localizations.dart';
import 'package:flutter/widgets.dart';

extension BuildContextX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
