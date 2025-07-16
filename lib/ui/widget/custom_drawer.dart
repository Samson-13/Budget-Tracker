import 'package:budget_tracker/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  String _version = '';

  @override
  void initState() {
    super.initState();
    _loadVersion();
  }

  Future<void> _loadVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _version = packageInfo.version;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 8),
            child: Center(
              child: Image.asset(
                'assets/logo/app_logo.png',
                width: 100,
                height: 100,
              ),
            ),
          ),

          ListTile(
            leading: const Icon(FontAwesomeIcons.phone),
            title: Text(context.l10n.contact_us),
            onTap: () {
              context.push(
                "/information_screen",
                extra: context.l10n.contact_us,
              );
            },
          ),
          // ListTile(
          //   leading: const Icon(FontAwesomeIcons.info),
          //   title: Text(context.l10n.about_us),
          //   onTap: () {
          //     context.push("/information_screen", extra: context.l10n.about_us);
          //   },
          // ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.shieldHalved),
            title: Text(context.l10n.privacy_policy),
            onTap: () {
              context.push(
                "/information_screen",
                extra: context.l10n.privacy_policy,
              );
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.fileLines),
            title: Text(context.l10n.terms_and_condition),
            onTap: () {
              context.push(
                "/information_screen",
                extra: context.l10n.terms_and_condition,
              );
            },
          ),
          const Gap(48),
          Center(
            child: Text(
              context.l10n.version,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Center(
            child: Text(
              _version.isNotEmpty ? _version : "Loading...",
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
