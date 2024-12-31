import 'package:get/get.dart';

class PolicyModel {
  RxnString package = RxnString();
  RxnString nameInsured = RxnString();
  RxnString nikInsured = RxnString();
  RxnString emailInsured = RxnString();
  RxnString phoneNumberInsured = RxnString();
  RxnString startDateCoverage = RxnString();
  RxnString endDateCoverage = RxnString();
  RxnString ownershipCoverage = RxnString();
  RxnString addressCoverage = RxnString();
  RxnString nameBeneficiary = RxnString();
  RxnString birthDateBeneficiary = RxnString();
  RxnString phoneNumberBeneficiary = RxnString();
  RxnString relationBeneficiary = RxnString();

  PolicyModel({
    String? package,
    String? nameInsured,
    String? nikInsured,
    String? emailInsured,
    String? phoneNumberInsured,
    String? startDateCoverage,
    String? endDateCoverage,
    String? ownershipCoverage,
    String? addressCoverage,
    String? nameBeneficiary,
    String? birthDateBeneficiary,
    String? phoneNumberBeneficiary,
    String? relationBeneficiary,
  }) {
    this.package.value = package;
    this.nameInsured.value = nameInsured;
    this.nikInsured.value = nikInsured;
    this.emailInsured.value = emailInsured;
    this.phoneNumberInsured.value = phoneNumberInsured;
    this.startDateCoverage.value = startDateCoverage;
    this.endDateCoverage.value = endDateCoverage;
    this.ownershipCoverage.value = ownershipCoverage;
    this.addressCoverage.value = addressCoverage;
    this.nameBeneficiary.value = nameBeneficiary;
    this.birthDateBeneficiary.value = birthDateBeneficiary;
    this.phoneNumberBeneficiary.value = phoneNumberBeneficiary;
    this.relationBeneficiary.value = relationBeneficiary;
  }
}
