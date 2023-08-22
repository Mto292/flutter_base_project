import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/app/extensions/widget_extension.dart';
import '../../constants/other/padding_and_radius_size.dart';

/// Drawer - turkcell icon - masa icon şekinde işletme ekranının appbarı
///
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? titleWidget;
  final String? title;
  final double? elevation;
  final Widget? actionWidget;
  final Widget? leading;
  final double? actionPadding;
  final Key? appBarKey;
  final double? leadingWidth;
  final Color? backgroundColor;
  final IconThemeData? iconTheme;
  final bool? centerTitle;
  final SystemUiOverlayStyle? systemOverlayStyle;

  const MyAppBar({
    Key? key,
    this.titleWidget,
    this.elevation,
    this.title,
    this.actionWidget,
    this.actionPadding,
    this.leading,
    this.appBarKey,
    this.leadingWidth,
    this.backgroundColor,
    this.iconTheme,
    this.centerTitle,
    this.systemOverlayStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      key: appBarKey,
      systemOverlayStyle: systemOverlayStyle,
      centerTitle: centerTitle,
      iconTheme: iconTheme,
      leadingWidth: leadingWidth,
      elevation: elevation,
      leading: leading,
      backgroundColor: backgroundColor,
      title: title != null ? Text(title!) : titleWidget,
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
