// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome back!`
  String get welcome {
    return Intl.message(
      'Welcome back!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get phone_number_hint {
    return Intl.message(
      'Enter your phone number',
      name: 'phone_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get password_hint {
    return Intl.message(
      'Enter your password',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgot_password {
    return Intl.message(
      'Forgot Password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with`
  String get or_login_with {
    return Intl.message(
      'Or continue with',
      name: 'or_login_with',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get no_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'no_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up Now`
  String get sign_up_now {
    return Intl.message(
      'Sign Up Now',
      name: 'sign_up_now',
      desc: '',
      args: [],
    );
  }

  /// `Login as Guest`
  String get as_guest {
    return Intl.message(
      'Login as Guest',
      name: 'as_guest',
      desc: '',
      args: [],
    );
  }

  /// `Hello, `
  String get hello {
    return Intl.message(
      'Hello, ',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Policy`
  String get polis {
    return Intl.message(
      'Policy',
      name: 'polis',
      desc: '',
      args: [],
    );
  }

  /// `Claim`
  String get klaim {
    return Intl.message(
      'Claim',
      name: 'klaim',
      desc: '',
      args: [],
    );
  }

  /// `Points`
  String get poin {
    return Intl.message(
      'Points',
      name: 'poin',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Buy Insurance`
  String get buy_insurance {
    return Intl.message(
      'Buy Insurance',
      name: 'buy_insurance',
      desc: '',
      args: [],
    );
  }

  /// `My Home`
  String get rumahku {
    return Intl.message(
      'My Home',
      name: 'rumahku',
      desc: '',
      args: [],
    );
  }

  /// `My Business`
  String get usahku {
    return Intl.message(
      'My Business',
      name: 'usahku',
      desc: '',
      args: [],
    );
  }

  /// `Marine`
  String get bahari {
    return Intl.message(
      'Marine',
      name: 'bahari',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get other {
    return Intl.message(
      'Others',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Info`
  String get info {
    return Intl.message(
      'Info',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `How to Claim Insurance`
  String get how_claim_insurance {
    return Intl.message(
      'How to Claim Insurance',
      name: 'how_claim_insurance',
      desc: '',
      args: [],
    );
  }

  /// `About Askrindo`
  String get about_askrindo {
    return Intl.message(
      'About Askrindo',
      name: 'about_askrindo',
      desc: '',
      args: [],
    );
  }

  /// `Latest News`
  String get latest_news {
    return Intl.message(
      'Latest News',
      name: 'latest_news',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message(
      'See All',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Insurance and Investment? Which one is better?`
  String get news1 {
    return Intl.message(
      'Insurance and Investment? Which one is better?',
      name: 'news1',
      desc: '',
      args: [],
    );
  }

  /// `Askrindo and Bank BTN Establish Line Facility Cooperation Worth Rp 1.5 Trillion`
  String get news2 {
    return Intl.message(
      'Askrindo and Bank BTN Establish Line Facility Cooperation Worth Rp 1.5 Trillion',
      name: 'news2',
      desc: '',
      args: [],
    );
  }

  /// `My Home Insurance`
  String get rumahku_insurance {
    return Intl.message(
      'My Home Insurance',
      name: 'rumahku_insurance',
      desc: '',
      args: [],
    );
  }

  /// `Get protection for damages to your home`
  String get rumahku_info_title {
    return Intl.message(
      'Get protection for damages to your home',
      name: 'rumahku_info_title',
      desc: '',
      args: [],
    );
  }

  /// `Provides coverage for financial losses caused by damage, loss, or destruction of objects due to fire, lightning, explosion, or natural disasters`
  String get rumahku_info1 {
    return Intl.message(
      'Provides coverage for financial losses caused by damage, loss, or destruction of objects due to fire, lightning, explosion, or natural disasters',
      name: 'rumahku_info1',
      desc: '',
      args: [],
    );
  }

  /// `Protects your building and household furniture`
  String get rumahku_info2 {
    return Intl.message(
      'Protects your building and household furniture',
      name: 'rumahku_info2',
      desc: '',
      args: [],
    );
  }

  /// `Benefits Obtained`
  String get benefits_obtained {
    return Intl.message(
      'Benefits Obtained',
      name: 'benefits_obtained',
      desc: '',
      args: [],
    );
  }

  /// `Fire compensation up to {price}`
  String rumahku_benefits_title1(Object price) {
    return Intl.message(
      'Fire compensation up to $price',
      name: 'rumahku_benefits_title1',
      desc: '',
      args: [price],
    );
  }

  /// `If there is damage due to a guaranteed event where repair, replacement, or restoration costs are equal to or greater than 75% of the actual building price`
  String get rumahku_benefits_desc1 {
    return Intl.message(
      'If there is damage due to a guaranteed event where repair, replacement, or restoration costs are equal to or greater than 75% of the actual building price',
      name: 'rumahku_benefits_desc1',
      desc: '',
      args: [],
    );
  }

  /// `Accidental death compensation up to {price}`
  String rumahku_benefits_title2(Object price) {
    return Intl.message(
      'Accidental death compensation up to $price',
      name: 'rumahku_benefits_title2',
      desc: '',
      args: [price],
    );
  }

  /// `If the participant dies in an incident at the insured location due to fire or natural disaster`
  String get rumahku_benefits_desc2 {
    return Intl.message(
      'If the participant dies in an incident at the insured location due to fire or natural disaster',
      name: 'rumahku_benefits_desc2',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get terms_conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.`
  String get terms_conditions_desc {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      name: 'terms_conditions_desc',
      desc: '',
      args: [],
    );
  }

  /// `Summary of Product and Service Information`
  String get summary_info {
    return Intl.message(
      'Summary of Product and Service Information',
      name: 'summary_info',
      desc: '',
      args: [],
    );
  }

  /// `Buy My Home Insurance`
  String get buy_insurance_rumahku {
    return Intl.message(
      'Buy My Home Insurance',
      name: 'buy_insurance_rumahku',
      desc: '',
      args: [],
    );
  }

  /// `Choose Insurance Package`
  String get choose_insurance_package {
    return Intl.message(
      'Choose Insurance Package',
      name: 'choose_insurance_package',
      desc: '',
      args: [],
    );
  }

  /// `Silver`
  String get silver {
    return Intl.message(
      'Silver',
      name: 'silver',
      desc: '',
      args: [],
    );
  }

  /// `Gold`
  String get gold {
    return Intl.message(
      'Gold',
      name: 'gold',
      desc: '',
      args: [],
    );
  }

  /// `Starting from `
  String get package_info1 {
    return Intl.message(
      'Starting from ',
      name: 'package_info1',
      desc: '',
      args: [],
    );
  }

  /// `{price}/year`
  String package_info2(Object price) {
    return Intl.message(
      '$price/year',
      name: 'package_info2',
      desc: '',
      args: [price],
    );
  }

  /// `, you will receive compensation if the residential building is damaged due to fire, riot, vehicle collision, natural disasters, and accidental death.`
  String get package_info3 {
    return Intl.message(
      ', you will receive compensation if the residential building is damaged due to fire, riot, vehicle collision, natural disasters, and accidental death.',
      name: 'package_info3',
      desc: '',
      args: [],
    );
  }

  /// `Select Policy Period`
  String get select_policy_period {
    return Intl.message(
      'Select Policy Period',
      name: 'select_policy_period',
      desc: '',
      args: [],
    );
  }

  /// `1 year`
  String get one_year {
    return Intl.message(
      '1 year',
      name: 'one_year',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Marine Insurance`
  String get bahari_insurance {
    return Intl.message(
      'Marine Insurance',
      name: 'bahari_insurance',
      desc: '',
      args: [],
    );
  }

  /// `Get personal protection against accidents`
  String get bahari_info_title {
    return Intl.message(
      'Get personal protection against accidents',
      name: 'bahari_info_title',
      desc: '',
      args: [],
    );
  }

  /// `Insurance with premiums determined based on specific risk assessments for the insured object.`
  String get bahari_info1 {
    return Intl.message(
      'Insurance with premiums determined based on specific risk assessments for the insured object.',
      name: 'bahari_info1',
      desc: '',
      args: [],
    );
  }

  /// `Medical expense reimbursement due to illness`
  String get bahari_info2 {
    return Intl.message(
      'Medical expense reimbursement due to illness',
      name: 'bahari_info2',
      desc: '',
      args: [],
    );
  }

  /// `Medical expense reimbursement due to personal accidents such as collision, natural disasters, and more`
  String get bahari_info3 {
    return Intl.message(
      'Medical expense reimbursement due to personal accidents such as collision, natural disasters, and more',
      name: 'bahari_info3',
      desc: '',
      args: [],
    );
  }

  /// `Medical expense reimbursement due to water sports accidents`
  String get bahari_info4 {
    return Intl.message(
      'Medical expense reimbursement due to water sports accidents',
      name: 'bahari_info4',
      desc: '',
      args: [],
    );
  }

  /// `Protection for death or permanent disability`
  String get bahari_info5 {
    return Intl.message(
      'Protection for death or permanent disability',
      name: 'bahari_info5',
      desc: '',
      args: [],
    );
  }

  /// `Fire compensation up to Rp100,000,000`
  String get bahari_benefits_desc1 {
    return Intl.message(
      'Fire compensation up to Rp100,000,000',
      name: 'bahari_benefits_desc1',
      desc: '',
      args: [],
    );
  }

  /// `Medical expense reimbursement up to Rp100,000,000`
  String get bahari_benefits_desc2 {
    return Intl.message(
      'Medical expense reimbursement up to Rp100,000,000',
      name: 'bahari_benefits_desc2',
      desc: '',
      args: [],
    );
  }

  /// `Accidental death compensation up to Rp100,000,000`
  String get bahari_benefits_desc3 {
    return Intl.message(
      'Accidental death compensation up to Rp100,000,000',
      name: 'bahari_benefits_desc3',
      desc: '',
      args: [],
    );
  }

  /// `Required Documents`
  String get required_documents {
    return Intl.message(
      'Required Documents',
      name: 'required_documents',
      desc: '',
      args: [],
    );
  }

  /// `Registrant's / Insured's ID Card`
  String get ktp_registrant {
    return Intl.message(
      'Registrant\'s / Insured\'s ID Card',
      name: 'ktp_registrant',
      desc: '',
      args: [],
    );
  }

  /// `Exclusion`
  String get exception {
    return Intl.message(
      'Exclusion',
      name: 'exception',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.`
  String get exception_desc {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      name: 'exception_desc',
      desc: '',
      args: [],
    );
  }

  /// `Download RIPLAY`
  String get download_riplay {
    return Intl.message(
      'Download RIPLAY',
      name: 'download_riplay',
      desc: '',
      args: [],
    );
  }

  /// `Policy Period`
  String get policy_period {
    return Intl.message(
      'Policy Period',
      name: 'policy_period',
      desc: '',
      args: [],
    );
  }

  /// `Policy Start Date`
  String get policy_start_date {
    return Intl.message(
      'Policy Start Date',
      name: 'policy_start_date',
      desc: '',
      args: [],
    );
  }

  /// `Select the policy start date`
  String get policy_start_date_hint {
    return Intl.message(
      'Select the policy start date',
      name: 'policy_start_date_hint',
      desc: '',
      args: [],
    );
  }

  /// `The policy is valid for 1 year from the start date.`
  String get policy_start_date_info {
    return Intl.message(
      'The policy is valid for 1 year from the start date.',
      name: 'policy_start_date_info',
      desc: '',
      args: [],
    );
  }

  /// `Total Payment`
  String get total_payment {
    return Intl.message(
      'Total Payment',
      name: 'total_payment',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get complete {
    return Intl.message(
      'Complete',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `Incomplete`
  String get not_complete {
    return Intl.message(
      'Incomplete',
      name: 'not_complete',
      desc: '',
      args: [],
    );
  }

  /// `Insured`
  String get insured {
    return Intl.message(
      'Insured',
      name: 'insured',
      desc: '',
      args: [],
    );
  }

  /// `The party guaranteed for compensation when the risks specified in the Policy occur.`
  String get insured_desc {
    return Intl.message(
      'The party guaranteed for compensation when the risks specified in the Policy occur.',
      name: 'insured_desc',
      desc: '',
      args: [],
    );
  }

  /// `Full Name of the Insured`
  String get insured_full_name {
    return Intl.message(
      'Full Name of the Insured',
      name: 'insured_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter full name`
  String get insured_full_name_hint {
    return Intl.message(
      'Enter full name',
      name: 'insured_full_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `National ID Number`
  String get nik {
    return Intl.message(
      'National ID Number',
      name: 'nik',
      desc: '',
      args: [],
    );
  }

  /// `Enter your National ID Number`
  String get nik_hint {
    return Intl.message(
      'Enter your National ID Number',
      name: 'nik_hint',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get email_hint {
    return Intl.message(
      'Enter your email',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Beneficiary`
  String get beneficiary {
    return Intl.message(
      'Beneficiary',
      name: 'beneficiary',
      desc: '',
      args: [],
    );
  }

  /// `The party appointed to inherit assets upon someone's death.`
  String get beneficiary_desc {
    return Intl.message(
      'The party appointed to inherit assets upon someone\'s death.',
      name: 'beneficiary_desc',
      desc: '',
      args: [],
    );
  }

  /// `Full Name of the Beneficiary`
  String get beneficiary_full_name {
    return Intl.message(
      'Full Name of the Beneficiary',
      name: 'beneficiary_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter full name`
  String get beneficiary_full_name_hint {
    return Intl.message(
      'Enter full name',
      name: 'beneficiary_full_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get birth_date {
    return Intl.message(
      'Date of Birth',
      name: 'birth_date',
      desc: '',
      args: [],
    );
  }

  /// `Select date of birth`
  String get birth_date_hint {
    return Intl.message(
      'Select date of birth',
      name: 'birth_date_hint',
      desc: '',
      args: [],
    );
  }

  /// `Beneficiary Relationship`
  String get beneficiary_relation {
    return Intl.message(
      'Beneficiary Relationship',
      name: 'beneficiary_relation',
      desc: '',
      args: [],
    );
  }

  /// `Select the beneficiary relationship`
  String get beneficiary_relation_hint {
    return Intl.message(
      'Select the beneficiary relationship',
      name: 'beneficiary_relation_hint',
      desc: '',
      args: [],
    );
  }

  /// `Object Coverage`
  String get object_coverage {
    return Intl.message(
      'Object Coverage',
      name: 'object_coverage',
      desc: '',
      args: [],
    );
  }

  /// `Object/building to be insured`
  String get object_coverage_desc {
    return Intl.message(
      'Object/building to be insured',
      name: 'object_coverage_desc',
      desc: '',
      args: [],
    );
  }

  /// `Ownership Status`
  String get ownership_status {
    return Intl.message(
      'Ownership Status',
      name: 'ownership_status',
      desc: '',
      args: [],
    );
  }

  /// `Select ownership status`
  String get ownership_status_hint {
    return Intl.message(
      'Select ownership status',
      name: 'ownership_status_hint',
      desc: '',
      args: [],
    );
  }

  /// `Full Address`
  String get full_address {
    return Intl.message(
      'Full Address',
      name: 'full_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter full address of the Object`
  String get full_address_hint {
    return Intl.message(
      'Enter full address of the Object',
      name: 'full_address_hint',
      desc: '',
      args: [],
    );
  }

  /// `Insurance Order Confirmation`
  String get order_confirmation {
    return Intl.message(
      'Insurance Order Confirmation',
      name: 'order_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Ensure the data below is correct before proceeding to payment.`
  String get order_confirmation_desc {
    return Intl.message(
      'Ensure the data below is correct before proceeding to payment.',
      name: 'order_confirmation_desc',
      desc: '',
      args: [],
    );
  }

  /// `You will buy insurance`
  String get will_buy {
    return Intl.message(
      'You will buy insurance',
      name: 'will_buy',
      desc: '',
      args: [],
    );
  }

  /// `Package Type`
  String get package_type {
    return Intl.message(
      'Package Type',
      name: 'package_type',
      desc: '',
      args: [],
    );
  }

  /// `Period`
  String get period {
    return Intl.message(
      'Period',
      name: 'period',
      desc: '',
      args: [],
    );
  }

  /// `Policy End Date`
  String get policy_end_date {
    return Intl.message(
      'Policy End Date',
      name: 'policy_end_date',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get order_summary {
    return Intl.message(
      'Order Summary',
      name: 'order_summary',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Pay Now`
  String get pay_now {
    return Intl.message(
      'Pay Now',
      name: 'pay_now',
      desc: '',
      args: [],
    );
  }

  /// `Ensure the entered data is correct`
  String get order_confirm {
    return Intl.message(
      'Ensure the entered data is correct',
      name: 'order_confirm',
      desc: '',
      args: [],
    );
  }

  /// `You cannot change the submitted data`
  String get order_confirm_desc {
    return Intl.message(
      'You cannot change the submitted data',
      name: 'order_confirm_desc',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Sure`
  String get sure {
    return Intl.message(
      'Sure',
      name: 'sure',
      desc: '',
      args: [],
    );
  }

  /// `Select Payment Method`
  String get select_payment_method {
    return Intl.message(
      'Select Payment Method',
      name: 'select_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Bank Transfer - Virtual Account`
  String get bank_transfer {
    return Intl.message(
      'Bank Transfer - Virtual Account',
      name: 'bank_transfer',
      desc: '',
      args: [],
    );
  }

  /// `Statement`
  String get statement {
    return Intl.message(
      'Statement',
      name: 'statement',
      desc: '',
      args: [],
    );
  }

  /// `Have read and understood the Terms & Conditions for purchasing Insurance.`
  String get statement1 {
    return Intl.message(
      'Have read and understood the Terms & Conditions for purchasing Insurance.',
      name: 'statement1',
      desc: '',
      args: [],
    );
  }

  /// `That the information provided in this application process is made honestly and accurately.`
  String get statement2 {
    return Intl.message(
      'That the information provided in this application process is made honestly and accurately.',
      name: 'statement2',
      desc: '',
      args: [],
    );
  }

  /// `Realizing that the provided information will be used as the basis and part of the insurance agreement to be issued, therefore any inaccuracy will invalidate the insurance and claims will be rejected by Askrindo.`
  String get statement3 {
    return Intl.message(
      'Realizing that the provided information will be used as the basis and part of the insurance agreement to be issued, therefore any inaccuracy will invalidate the insurance and claims will be rejected by Askrindo.',
      name: 'statement3',
      desc: '',
      args: [],
    );
  }

  /// `Realizing that if the premium is not fully paid by the due date, the Policy becomes void and Askrindo is free from any obligation to pay claims.`
  String get statement4 {
    return Intl.message(
      'Realizing that if the premium is not fully paid by the due date, the Policy becomes void and Askrindo is free from any obligation to pay claims.',
      name: 'statement4',
      desc: '',
      args: [],
    );
  }

  /// `General RIPLAY can be accessed through Askrindo's Website.`
  String get statement5 {
    return Intl.message(
      'General RIPLAY can be accessed through Askrindo\'s Website.',
      name: 'statement5',
      desc: '',
      args: [],
    );
  }

  /// `Personal RIPLAY refers to the explanation stated in the General RIPLAY and the details of coverage and insurance listed on the portal filled and agreed upon by me.`
  String get statement6 {
    return Intl.message(
      'Personal RIPLAY refers to the explanation stated in the General RIPLAY and the details of coverage and insurance listed on the portal filled and agreed upon by me.',
      name: 'statement6',
      desc: '',
      args: [],
    );
  }

  /// `Agree to receive the policy documents electronically (softcopy).`
  String get statement7 {
    return Intl.message(
      'Agree to receive the policy documents electronically (softcopy).',
      name: 'statement7',
      desc: '',
      args: [],
    );
  }

  /// `Agree to receive information about other products and programs in the future.`
  String get statement8 {
    return Intl.message(
      'Agree to receive information about other products and programs in the future.',
      name: 'statement8',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the statements above consciously and without coercion from any party`
  String get statement_check {
    return Intl.message(
      'I agree to the statements above consciously and without coercion from any party',
      name: 'statement_check',
      desc: '',
      args: [],
    );
  }

  /// `Successfully purchased policy`
  String get success_title {
    return Intl.message(
      'Successfully purchased policy',
      name: 'success_title',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for purchasing the My Home Insurance policy. Your policy details can be viewed through the 'Policy' menu.`
  String get success_desc {
    return Intl.message(
      'Thank you for purchasing the My Home Insurance policy. Your policy details can be viewed through the \'Policy\' menu.',
      name: 'success_desc',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'id'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
