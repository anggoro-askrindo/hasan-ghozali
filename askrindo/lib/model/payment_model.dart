import 'package:askrindo/const/image_const.dart';

class PaymentModel {
  bool? active;
  final String? icon;
  final String? label;
  final List<PaymentModel>? children;

  PaymentModel({
    this.active,
    this.icon,
    this.label,
    this.children,
  });
}

List<PaymentModel> listPayment() {
  return [
    PaymentModel(
      label: 'Transfer Bank - Virtual Account',
      children: [
        PaymentModel(
          icon: ImageConst.logoBca,
          label: 'Virtual Account BCA',
        ),
        PaymentModel(
          icon: ImageConst.logoBni,
          label: 'Virtual Account BNI',
        ),
        PaymentModel(
          icon: ImageConst.logoBri,
          label: 'Virtual Account BRI',
        ),
        PaymentModel(
          icon: ImageConst.logoMandiri,
          label: 'Virtual Account Mandiri',
        ),
      ],
    ),
    PaymentModel(
      label: 'E-Wallet',
      children: [
        PaymentModel(
          icon: ImageConst.logoGopay,
          label: 'Gopay',
        ),
      ],
    ),
  ];
}
