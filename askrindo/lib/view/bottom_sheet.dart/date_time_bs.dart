import 'package:askrindo/generated/l10n.dart';
import 'package:askrindo/view/atom/bottom_sheet_atom.dart';
import 'package:askrindo/view/atom/button_atom.dart';
import 'package:askrindo/view/atom/text_style_atom.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void dateTimeBs(
  BuildContext context, {
  DateTime? initialDateTime,
  DateTime? minimumDate,
  DateTime? maximumDate,
  CupertinoDatePickerMode? mode,
  Function(DateTime)? onDateTimeSelected,
}) {
  DateTime dateSelected = initialDateTime ?? DateTime.now();

  bottomSheetAtom(
    context: context,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 200,
        child: CupertinoTheme(
          data: CupertinoThemeData(
            textTheme: CupertinoTextThemeData(dateTimePickerTextStyle: TextStyleAtom.bold18),
          ),
          child: CupertinoDatePicker(
            mode: mode ?? CupertinoDatePickerMode.dateAndTime,
            dateOrder: DatePickerDateOrder.dmy,
            use24hFormat: true,
            initialDateTime: dateSelected,
            minimumDate: minimumDate,
            maximumDate: maximumDate,
            onDateTimeChanged: (value) => dateSelected = value,
          ),
        ),
      ),
      const SizedBox(height: 20),
      ButtonAtom.primary(
        width: double.infinity,
        label: S.of(context).ok,
        onTap: () {
          onDateTimeSelected?.call(dateSelected);
          Get.back();
        },
      ),
    ],
  );
}
