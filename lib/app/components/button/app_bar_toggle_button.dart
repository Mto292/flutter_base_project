import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_base_project/app/constants/other/padding_and_radius_size.dart';
import 'package:flutter_base_project/app/extensions/widgets_scale_extension.dart';
import '../../theme/text_style/text_style.dart';
import 'package:collection/collection.dart';

class AppBarToggleButton extends StatelessWidget {
  final Function(int index) onTap;
  final List<bool> activeTabBtn;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? selectedColor;
  final Color? textSelectedColor;
  final List<String> list;
  final List<String>? svgAssetsList;

  const AppBarToggleButton({
    Key? key,
    required this.onTap,
    required this.activeTabBtn,
    this.width,
    this.backgroundColor,
    this.selectedColor,
    this.textSelectedColor,
    required this.list,
    this.svgAssetsList,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = height ?? 32.horizontalScale;
    return SizedBox(
      width: width,
      height: _height,
      child: Card(
        color: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radiusXL),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(_height / 14),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: list
                .mapIndexed(
                  (index, element) => Flexible(
                    child: _Button(
                      selectedColor: selectedColor ?? Theme.of(context).colorScheme.secondary,
                      textSelectedColor: textSelectedColor,
                      onPressed: () => onTap(index),
                      selected: activeTabBtn[index],
                      txt: element,
                      svgAssets: svgAssetsList != null ? svgAssetsList![index] : null,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool selected;
  final String txt;
  final String? svgAssets;
  final Color selectedColor;
  final Color? textSelectedColor;

  const _Button(
      {Key? key,
      required this.onPressed,
      required this.selected,
      required this.txt,
      this.svgAssets,
      required this.selectedColor,
      this.textSelectedColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radiusXL),
          ),
        ),
        color: selected ? selectedColor : Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingXS.horizontalScale),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              svgAssets == null
                  ? const SizedBox()
                  : Padding(
                      padding: EdgeInsets.only(right: paddingXXXS.horizontalScale),
                      child: SvgPicture.asset(
                        svgAssets!,
                        // color: Theme.of(context).elevatedButtonTheme.style.backgroundColor as Widget,
                        width: 14.horizontalScale,
                        height: 14.horizontalScale,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    txt,
                    maxLines: 1,
                    style: s13w400Dark.copyWith(color: selected ? textSelectedColor : null),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
