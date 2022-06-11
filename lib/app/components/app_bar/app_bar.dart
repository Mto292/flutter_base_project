import 'package:dop_flutter_base_project/app/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import '../../constants/app/padding_and_radius_size.dart';
import '../../navigation/size_config.dart';

/// Drawer - turkcell icon - masa icon şekinde işletme ekranının appbarı
///
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? titleWidget;
  final String? title;
  final double? elevation;
  final Widget? actionWidget;
  final Widget? actionLeading;
  final double? actionPadding;
  final Key? appBarKey;
  final double? leadingWidth;
  final Color? backgroundColor;
  final IconThemeData? iconTheme;

  const MyAppBar({
    Key? key,
    this.titleWidget,
    this.elevation,
    this.title,
    this.actionWidget,
    this.actionPadding,
    this.actionLeading,
    this.appBarKey,
    this.leadingWidth,
    this.backgroundColor,
    this.iconTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: iconTheme,
      leadingWidth: leadingWidth,
      key: appBarKey,
      elevation: elevation,
      leading: actionLeading,
      backgroundColor: backgroundColor,
      title: title != null
          ? Text(title!) //textStyle lı appBar theme den alıyor
          : titleWidget ??
              Image.asset(
                '',
                height: (SizeConfig.appBarHeight / 100) * 58,
              ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: actionPadding ?? paddingM),
          child: actionWidget,
        ).isVisible(actionWidget != null),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
