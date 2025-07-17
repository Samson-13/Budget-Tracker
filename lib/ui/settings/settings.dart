import 'package:budget_tracker/l10n/l10n.dart';
import 'package:budget_tracker/ui/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: context.l10n.settings,
        showBackButton: false,
      ),
      body: ListView(
        children: [
          const Gap(12),

          Image.asset("assets/logo/app_logo.png", height: 200, width: 200),
          const Gap(12),

          // Notification Settings
          _SettingsTile(
            icon: Icons.notifications_outlined,
            title: context.l10n.notification_settings,
            onTap: () {
              // TODO: Navigate to Notification Settings page
            },
          ),

          // Contact Us
          _SettingsTile(
            icon: Icons.support_agent,
            title: context.l10n.contact_us,
            onTap: () {
              context.push(
                "/information_screen",
                extra: context.l10n.contact_us,
              );
            },
          ),

          // About Us
          _SettingsTile(
            icon: Icons.info_outline,
            title: context.l10n.about_us,
            onTap: () {
              context.push("/information_screen", extra: context.l10n.about_us);
            },
          ),

          // Terms and Conditions
          _SettingsTile(
            icon: Icons.description_outlined,
            title: context.l10n.terms_and_condition,
            onTap: () {
              context.push(
                "/information_screen",
                extra: context.l10n.terms_and_condition,
              );
            },
          ),

          // Privacy Policy
          _SettingsTile(
            icon: Icons.lock_outline,
            title: context.l10n.privacy_policy,
            onTap: () {
              context.push(
                "/information_screen",
                extra: context.l10n.privacy_policy,
              );
            },
          ),

          const Divider(),

          // App Version
          ListTile(
            leading: const Icon(Icons.verified_outlined),
            title: const Text("App Version"),
            subtitle: const Text("v1.0.0"), // You can fetch this dynamically
          ),

          // Sign Out
          _SettingsTile(
            icon: Icons.logout,
            title: context.l10n.sign_out,
            textColor: Colors.red,
            onTap: () {
              // TODO: Confirm and handle logout
            },
          ),

          const Gap(20),
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final Color? textColor;

  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: textColor),
      title: Text(title, style: TextStyle(color: textColor)),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
