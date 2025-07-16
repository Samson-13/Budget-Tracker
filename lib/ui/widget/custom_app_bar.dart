import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

PreferredSizeWidget customAppBar({
  required BuildContext context,
  String? title,
  List<Widget>? actions,
  bool showBackButton = true,
}) {
  return AppBar(
    title: title != null ? Text(title) : null,
    centerTitle: true,
    leading:
        showBackButton
            ? IconButton(
              icon: Icon(FontAwesomeIcons.chevronLeft),
              onPressed: () => Navigator.pop(context),
            )
            : null,
    actions: actions,
    elevation: 0,
  );
}
