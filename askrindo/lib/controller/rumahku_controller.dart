import 'package:askrindo/model/policy_model.dart';
import 'package:askrindo/model/rumahku_model.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RumahkuController extends GetxController {
  var index = 0.obs;
  var policy = PolicyModel().obs;

  bool get insuredDone {
    final value = policy.value;
    final fields = [
      value.nameInsured.value,
      value.nikInsured.value,
      value.phoneNumberInsured.value,
    ];
    return fields.every((field) => field != null && field.isNotEmpty);
  }

  bool get coverageDone {
    final value = policy.value;
    return value.addressCoverage.value != null && (value.addressCoverage.value ?? '').isNotEmpty;
  }

  bool get beneficiaryDone {
    final value = policy.value;
    return value.nameBeneficiary.value != null && (value.nameBeneficiary.value ?? '').isNotEmpty;
  }

  bool get allDone {
    return insuredDone && coverageDone && beneficiaryDone;
  }

  var list = [
    RumahkuModel(
      code: 'silver',
      package: 'Silver',
      price: 50000,
      fire: 20000000,
      accident: 5000000,
    ),
    RumahkuModel(
      code: 'gold',
      package: 'Gold',
      price: 75000,
      fire: 40000000,
      accident: 7000000,
    ),
  ].obs;
}
