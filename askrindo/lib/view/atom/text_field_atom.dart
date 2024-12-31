import 'package:askrindo/const/icon_const.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/color_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldAtom extends StatefulWidget {
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final bool enabled;
  final String? title;
  final String? subtitle;
  final String? hintText;
  final String? helper;
  final Color? helperColor;
  final String? error;
  final bool withObscure;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final int maxLines;
  final Widget? prefix;
  final String? suffixIcon;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Function()? onTap;

  const TextFieldAtom({
    super.key,
    this.controller,
    this.contentPadding,
    this.enabled = true,
    this.title,
    this.subtitle,
    this.hintText,
    this.helper,
    this.helperColor = ColorAtom.text,
    this.error,
    this.withObscure = false,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.textInputAction,
    this.maxLines = 1,
    this.maxLength,
    this.prefix,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
  });

  @override
  State<TextFieldAtom> createState() => _TextFieldAtomState();
}

class _TextFieldAtomState extends State<TextFieldAtom> {
  bool _obscureText = false;

  final InputBorder regularBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: ColorAtom.lightGrey, width: 1),
    borderRadius: BorderRadius.circular(12),
  );

  final InputBorder focusedBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: ColorAtom.primary, width: 1),
    borderRadius: BorderRadius.circular(12),
  );

  final InputBorder errorBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: ColorAtom.red, width: 1),
    borderRadius: BorderRadius.circular(8),
  );

  Widget? _suffixIcon() {
    if (widget.withObscure || widget.suffixIcon != null) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: widget.withObscure
            ? ButtonAtom.icon(
                size: 24,
                color: ColorAtom.black,
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: _obscureText ? IconConst.icEye : IconConst.icEyeSlash,
              )
            : SvgPicture.asset(
                widget.suffixIcon!,
                width: 24,
                height: 24,
                colorFilter: const ColorFilter.mode(
                  ColorAtom.black,
                  BlendMode.dst,
                ),
              ),
      );
    } else {
      return null;
    }
  }

  @override
  void initState() {
    _obscureText = widget.withObscure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if ((widget.title ?? '').isNotEmpty) ...[
          Text(
            widget.title!,
            style: TextStyleAtom.semiBold15,
          ),
          const SizedBox(height: 4),
        ],
        if ((widget.subtitle ?? '').isNotEmpty) ...[
          Text(
            widget.subtitle!,
            style: TextStyleAtom.regular13,
          ),
          const SizedBox(height: 4),
        ],
        TextField(
          enabled: widget.enabled,
          controller: widget.controller,
          style: widget.enabled ? TextStyleAtom.regular15 : TextStyleAtom.regular15DarkGrey,
          cursorColor: ColorAtom.text,
          obscureText: _obscureText,
          onChanged: widget.onChanged,
          onSubmitted: widget.onSubmitted,
          onTap: widget.onTap,
          readOnly: widget.onTap != null || !widget.enabled,
          inputFormatters: widget.inputFormatters,
          keyboardType: widget.keyboardType,
          textCapitalization: widget.textCapitalization,
          maxLength: widget.maxLength,
          maxLines: widget.maxLines,
          textInputAction: widget.textInputAction,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyleAtom.regular15DarkGrey,
            helperText: widget.helper,
            helperStyle: TextStyleAtom.regular12.copyWith(color: widget.helperColor),
            helperMaxLines: 4,
            errorText: widget.error,
            errorStyle: TextStyleAtom.regular12Red,
            errorMaxLines: 4,
            isDense: true,
            contentPadding: widget.contentPadding ??
                EdgeInsets.only(
                  left: widget.prefix == null ? 20 : 0,
                  right: widget.suffixIcon == null ? 20 : 0,
                  top: 12,
                  bottom: 12,
                ),
            constraints: const BoxConstraints(),
            prefixIcon: widget.prefix,
            prefixIconConstraints: const BoxConstraints(),
            suffixIcon: _suffixIcon(),
            suffixIconConstraints: const BoxConstraints(),
            fillColor: ColorAtom.transparent,
            filled: true,
            border: regularBorder,
            enabledBorder: regularBorder,
            focusedBorder: focusedBorder,
            disabledBorder: regularBorder,
            errorBorder: errorBorder,
            focusedErrorBorder: errorBorder,
            counter: const Offstage(),
          ),
        ),
      ],
    );
  }
}
