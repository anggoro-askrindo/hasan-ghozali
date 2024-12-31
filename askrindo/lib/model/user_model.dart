import 'package:get/get.dart';

class UserModel {
  RxnString code = RxnString();
  RxnString phoneNumber = RxnString();
  RxnString name = RxnString();

  UserModel({
    String? code,
    String? phoneNumber,
    String? name,
  }) {
    this.code.value = code;
    this.phoneNumber.value = phoneNumber;
    this.name.value = name;
  }
}
