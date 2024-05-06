import 'package:flutter/material.dart';
import 'package:shop/utils/constants/color.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile(
      {super.key,
      required this.icon,
      required this.title,
      this.traling,
      this.onTap,
      required this.subTitle});
  final IconData icon;
  final String title, subTitle;
  final Widget? traling;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: TColor.kPrimaryColor,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: traling,
      onTap: onTap,
    );
  }
}
