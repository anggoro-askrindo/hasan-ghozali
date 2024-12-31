import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonAtom {
  ButtonAtom._();

  static Widget _filled({
    final double? width,
    final double? height,
    final String? label,
    final TextStyle? labelStyle,
    final String? icon,
    final double? iconSize,
    final IconAlignment? iconAlignment,
    final Color? backgroundColor,
    final Color? disableColor,
    final Color? childColor,
    final BorderSide? side,
    final void Function()? onTap,
  }) {
    final color = onTap == null ? ColorAtom.bodyText : childColor;
    Widget? iconWidget;
    if (icon != null) {
      iconWidget = SvgPicture.asset(
        icon,
        width: iconSize ?? 24,
        height: iconSize ?? 24,
        colorFilter: color != null
            ? ColorFilter.mode(
                color,
                BlendMode.dst,
              )
            : null,
      );
    }

    final textStyle = labelStyle?.copyWith(color: color) ?? TextStyleAtom.bold15.copyWith(color: color);

    final buttonStyle = FilledButton.styleFrom(
      padding: width == null ? const EdgeInsets.symmetric(horizontal: 12) : EdgeInsets.zero,
      backgroundColor: backgroundColor,
      foregroundColor: color,
      disabledBackgroundColor: disableColor ?? ColorAtom.darkGrey,
      shape: const StadiumBorder(),
      side: side,
    );

    return SizedBox(
      width: width,
      height: height ?? 47,
      child: label != null
          ? FilledButton.icon(
              onPressed: onTap,
              label: Text(label, style: textStyle),
              iconAlignment: iconAlignment ?? IconAlignment.end,
              icon: iconWidget,
              style: buttonStyle)
          : FilledButton(
              onPressed: onTap,
              iconAlignment: iconAlignment ?? IconAlignment.end,
              style: buttonStyle,
              child: iconWidget,
            ),
    );
  }

  static Widget primary({
    final double? width,
    final double? height,
    final String? label,
    final String? icon,
    final IconAlignment? iconAlignment,
    final void Function()? onTap,
  }) {
    return _filled(
      width: width,
      height: height,
      label: label,
      icon: icon,
      iconAlignment: iconAlignment,
      onTap: onTap,
      backgroundColor: ColorAtom.primary,
      childColor: ColorAtom.white,
    );
  }

  static Widget secondary({
    final double? width,
    final double? height,
    final String? label,
    final String? icon,
    final IconAlignment? iconAlignment,
    final void Function()? onTap,
  }) {
    return _filled(
      width: width,
      height: height,
      label: label,
      icon: icon,
      iconAlignment: iconAlignment,
      onTap: onTap,
      backgroundColor: ColorAtom.secondary,
      childColor: ColorAtom.primary,
    );
  }

  static Widget link({
    final String? label,
    final String? icon,
    final TextStyle? style,
    final IconAlignment? iconAlignment,
    final Color color = ColorAtom.accent,
    final void Function()? onTap,
  }) {
    return TextButton.icon(
      onPressed: onTap,
      icon: icon != null
          ? SvgPicture.asset(
              icon,
              width: 14,
              height: 14,
              colorFilter: ColorFilter.mode(
                color,
                BlendMode.dst,
              ),
            )
          : null,
      label: Text(
        label ?? '',
        style: style?.copyWith(color: color) ?? TextStyleAtom.semiBold13.copyWith(color: color),
      ),
      iconAlignment: iconAlignment ?? IconAlignment.end,
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        padding: const EdgeInsets.all(8),
        shape: const StadiumBorder(),
        foregroundColor: color,
        disabledForegroundColor: color,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  static Widget icon({
    required final String icon,
    final double? size,
    final Color? color,
    final void Function()? onTap,
  }) {
    return IconButton(
      onPressed: onTap,
      icon: SvgPicture.asset(
        icon,
        width: size ?? 24,
        height: size ?? 24,
        colorFilter: color != null
            ? ColorFilter.mode(
                color,
                BlendMode.dst,
              )
            : null,
      ),
      iconSize: size ?? 24,
      color: color,
      disabledColor: ColorAtom.darkGrey,
      constraints: const BoxConstraints(),
      style: const ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
    );
  }
}
