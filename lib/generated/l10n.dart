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

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `come back again`
  String get return_back {
    return Intl.message(
      'come back again',
      name: 'return_back',
      desc: '',
      args: [],
    );
  }

  /// `enter your data to log in`
  String get login_msg {
    return Intl.message(
      'enter your data to log in',
      name: 'login_msg',
      desc: '',
      args: [],
    );
  }

  /// `Home visit`
  String get home_visit {
    return Intl.message(
      'Home visit',
      name: 'home_visit',
      desc: '',
      args: [],
    );
  }

  /// `Medical laboratories`
  String get medical_laboratories {
    return Intl.message(
      'Medical laboratories',
      name: 'medical_laboratories',
      desc: '',
      args: [],
    );
  }

  /// `We work for your convenience`
  String get your_convenience {
    return Intl.message(
      'We work for your convenience',
      name: 'your_convenience',
      desc: '',
      args: [],
    );
  }

  /// `Book a home visit for all types of medical care, through a specialized team`
  String get welcome1 {
    return Intl.message(
      'Book a home visit for all types of medical care, through a specialized team',
      name: 'welcome1',
      desc: '',
      args: [],
    );
  }

  /// `Discounts of up to 50%, in addition to the secure payment feature`
  String get welcome2 {
    return Intl.message(
      'Discounts of up to 50%, in addition to the secure payment feature',
      name: 'welcome2',
      desc: '',
      args: [],
    );
  }

  /// `Get the best advanced health experience now`
  String get welcome3 {
    return Intl.message(
      'Get the best advanced health experience now',
      name: 'welcome3',
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

  /// `Start now`
  String get start_now {
    return Intl.message(
      'Start now',
      name: 'start_now',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `A confirmation code has been sent to the number. Please check your phone`
  String get otp_msg {
    return Intl.message(
      'A confirmation code has been sent to the number. Please check your phone',
      name: 'otp_msg',
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

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
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

  /// `Services`
  String get services {
    return Intl.message(
      'Services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Show all`
  String get show_all {
    return Intl.message(
      'Show all',
      name: 'show_all',
      desc: '',
      args: [],
    );
  }

  /// `Analysis`
  String get analysis {
    return Intl.message(
      'Analysis',
      name: 'analysis',
      desc: '',
      args: [],
    );
  }

  /// `Rays`
  String get rays {
    return Intl.message(
      'Rays',
      name: 'rays',
      desc: '',
      args: [],
    );
  }

  /// `Hospitals`
  String get hospitals {
    return Intl.message(
      'Hospitals',
      name: 'hospitals',
      desc: '',
      args: [],
    );
  }

  /// `Clinics`
  String get clinics {
    return Intl.message(
      'Clinics',
      name: 'clinics',
      desc: '',
      args: [],
    );
  }

  /// `Nearby laboratories`
  String get nearby_laboratories {
    return Intl.message(
      'Nearby laboratories',
      name: 'nearby_laboratories',
      desc: '',
      args: [],
    );
  }

  /// `Famous laboratories`
  String get famous_laboratories {
    return Intl.message(
      'Famous laboratories',
      name: 'famous_laboratories',
      desc: '',
      args: [],
    );
  }

  /// `control all your data`
  String get control_your_data {
    return Intl.message(
      'control all your data',
      name: 'control_your_data',
      desc: '',
      args: [],
    );
  }

  /// `Refine`
  String get refine {
    return Intl.message(
      'Refine',
      name: 'refine',
      desc: '',
      args: [],
    );
  }

  /// `get well soon`
  String get get_well_soon {
    return Intl.message(
      'get well soon',
      name: 'get_well_soon',
      desc: '',
      args: [],
    );
  }

  /// `Completed examinations`
  String get completed_examinations {
    return Intl.message(
      'Completed examinations',
      name: 'completed_examinations',
      desc: '',
      args: [],
    );
  }

  /// `Incomplete examinations`
  String get incomplete_examinations {
    return Intl.message(
      'Incomplete examinations',
      name: 'incomplete_examinations',
      desc: '',
      args: [],
    );
  }

  /// `No examinations have been recorded yet`
  String get no_examinations {
    return Intl.message(
      'No examinations have been recorded yet',
      name: 'no_examinations',
      desc: '',
      args: [],
    );
  }

  /// `You can search for the laboratory closest to you or the service you want`
  String get you_can_search {
    return Intl.message(
      'You can search for the laboratory closest to you or the service you want',
      name: 'you_can_search',
      desc: '',
      args: [],
    );
  }

  /// `Order number`
  String get order_number {
    return Intl.message(
      'Order number',
      name: 'order_number',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get my_account {
    return Intl.message(
      'Account',
      name: 'my_account',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Questions`
  String get questions {
    return Intl.message(
      'Questions',
      name: 'questions',
      desc: '',
      args: [],
    );
  }

  /// `App rating`
  String get app_rating {
    return Intl.message(
      'App rating',
      name: 'app_rating',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Privacy policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Terms and conditions`
  String get terms {
    return Intl.message(
      'Terms and conditions',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Find a service provider`
  String get find_a_service_provider {
    return Intl.message(
      'Find a service provider',
      name: 'find_a_service_provider',
      desc: '',
      args: [],
    );
  }

  /// `let us do it for you`
  String get let_us_do_it_for_you {
    return Intl.message(
      'let us do it for you',
      name: 'let_us_do_it_for_you',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Birth Date`
  String get birth_date {
    return Intl.message(
      'Birth Date',
      name: 'birth_date',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message(
      'Balance',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get transactions {
    return Intl.message(
      'Transactions',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `price start from  `
  String get price_start_from {
    return Intl.message(
      'price start from  ',
      name: 'price_start_from',
      desc: '',
      args: [],
    );
  }

  /// ` LE `
  String get le {
    return Intl.message(
      ' LE ',
      name: 'le',
      desc: '',
      args: [],
    );
  }

  /// `Branch`
  String get branch {
    return Intl.message(
      'Branch',
      name: 'branch',
      desc: '',
      args: [],
    );
  }

  /// `examinations`
  String get orders_cart {
    return Intl.message(
      'examinations',
      name: 'orders_cart',
      desc: '',
      args: [],
    );
  }

  /// `show cart`
  String get show_cart {
    return Intl.message(
      'show cart',
      name: 'show_cart',
      desc: '',
      args: [],
    );
  }

  /// `Return policy`
  String get return_policy {
    return Intl.message(
      'Return policy',
      name: 'return_policy',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enter_phone_number {
    return Intl.message(
      'Enter your phone number',
      name: 'enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile`
  String get edit_profile {
    return Intl.message(
      'Edit profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Total payment`
  String get total_payment {
    return Intl.message(
      'Total payment',
      name: 'total_payment',
      desc: '',
      args: [],
    );
  }

  /// `Complete order`
  String get complete_order {
    return Intl.message(
      'Complete order',
      name: 'complete_order',
      desc: '',
      args: [],
    );
  }

  /// `Patient details`
  String get patient_details {
    return Intl.message(
      'Patient details',
      name: 'patient_details',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Booking date`
  String get booking_date {
    return Intl.message(
      'Booking date',
      name: 'booking_date',
      desc: '',
      args: [],
    );
  }

  /// `continue payment`
  String get continue_payment {
    return Intl.message(
      'continue payment',
      name: 'continue_payment',
      desc: '',
      args: [],
    );
  }

  /// `Please complete all data`
  String get please_complete_data {
    return Intl.message(
      'Please complete all data',
      name: 'please_complete_data',
      desc: '',
      args: [],
    );
  }

  /// `Let us know you`
  String get let_us_know_you {
    return Intl.message(
      'Let us know you',
      name: 'let_us_know_you',
      desc: '',
      args: [],
    );
  }

  /// `discover our services`
  String get discover_our_services {
    return Intl.message(
      'discover our services',
      name: 'discover_our_services',
      desc: '',
      args: [],
    );
  }

  /// `instead of `
  String get instead_of {
    return Intl.message(
      'instead of ',
      name: 'instead_of',
      desc: '',
      args: [],
    );
  }

  /// `Laboratory data`
  String get laboratory_data {
    return Intl.message(
      'Laboratory data',
      name: 'laboratory_data',
      desc: '',
      args: [],
    );
  }

  /// `Order details`
  String get order_details {
    return Intl.message(
      'Order details',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Area`
  String get area {
    return Intl.message(
      'Area',
      name: 'area',
      desc: '',
      args: [],
    );
  }

  /// `Choose your city`
  String get choose_city_and_area {
    return Intl.message(
      'Choose your city',
      name: 'choose_city_and_area',
      desc: '',
      args: [],
    );
  }

  /// `Save address`
  String get save_address {
    return Intl.message(
      'Save address',
      name: 'save_address',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Laboratory`
  String get laboratory {
    return Intl.message(
      'Laboratory',
      name: 'laboratory',
      desc: '',
      args: [],
    );
  }

  /// `Examinations`
  String get examinations {
    return Intl.message(
      'Examinations',
      name: 'examinations',
      desc: '',
      args: [],
    );
  }

  /// `Login first`
  String get login_first {
    return Intl.message(
      'Login first',
      name: 'login_first',
      desc: '',
      args: [],
    );
  }

  /// `No internet`
  String get no_internet {
    return Intl.message(
      'No internet',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `All areas`
  String get all_areas {
    return Intl.message(
      'All areas',
      name: 'all_areas',
      desc: '',
      args: [],
    );
  }

  /// `Balance added`
  String get balance_added {
    return Intl.message(
      'Balance added',
      name: 'balance_added',
      desc: '',
      args: [],
    );
  }

  /// `Order has been paid`
  String get order_has_been_paid {
    return Intl.message(
      'Order has been paid',
      name: 'order_has_been_paid',
      desc: '',
      args: [],
    );
  }

  /// `transaction number`
  String get transaction_number {
    return Intl.message(
      'transaction number',
      name: 'transaction_number',
      desc: '',
      args: [],
    );
  }

  /// `cancel`
  String get cancel {
    return Intl.message(
      'cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `save`
  String get save {
    return Intl.message(
      'save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `do you want to save the modifications you have made to your personal data`
  String get edit_profile_msg {
    return Intl.message(
      'do you want to save the modifications you have made to your personal data',
      name: 'edit_profile_msg',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get alert {
    return Intl.message(
      'Alert',
      name: 'alert',
      desc: '',
      args: [],
    );
  }

  /// `do you want to log out of the account`
  String get logout_msg {
    return Intl.message(
      'do you want to log out of the account',
      name: 'logout_msg',
      desc: '',
      args: [],
    );
  }

  /// `do you want to delete this account`
  String get delete_msg {
    return Intl.message(
      'do you want to delete this account',
      name: 'delete_msg',
      desc: '',
      args: [],
    );
  }

  /// `Sorry no data available`
  String get no_data {
    return Intl.message(
      'Sorry no data available',
      name: 'no_data',
      desc: '',
      args: [],
    );
  }

  /// `mark as read`
  String get mark_as_read {
    return Intl.message(
      'mark as read',
      name: 'mark_as_read',
      desc: '',
      args: [],
    );
  }

  /// `please tap again to exit`
  String get exit_msg {
    return Intl.message(
      'please tap again to exit',
      name: 'exit_msg',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message(
      'km',
      name: 'km',
      desc: '',
      args: [],
    );
  }

  /// `please select branch`
  String get select_branch {
    return Intl.message(
      'please select branch',
      name: 'select_branch',
      desc: '',
      args: [],
    );
  }

  /// `distance`
  String get distance {
    return Intl.message(
      'distance',
      name: 'distance',
      desc: '',
      args: [],
    );
  }

  /// `Rate your visit`
  String get rate_your_visit {
    return Intl.message(
      'Rate your visit',
      name: 'rate_your_visit',
      desc: '',
      args: [],
    );
  }

  /// `Rate order`
  String get rate_order {
    return Intl.message(
      'Rate order',
      name: 'rate_order',
      desc: '',
      args: [],
    );
  }

  /// `Rate visit No`
  String get rate_visit_No {
    return Intl.message(
      'Rate visit No',
      name: 'rate_visit_No',
      desc: '',
      args: [],
    );
  }

  /// `Save rating`
  String get save_rating {
    return Intl.message(
      'Save rating',
      name: 'save_rating',
      desc: '',
      args: [],
    );
  }

  /// `We would love to hear your opinion`
  String get rate_msg {
    return Intl.message(
      'We would love to hear your opinion',
      name: 'rate_msg',
      desc: '',
      args: [],
    );
  }

  /// `review is required`
  String get review_is_required {
    return Intl.message(
      'review is required',
      name: 'review_is_required',
      desc: '',
      args: [],
    );
  }

  /// `minimum rate is 2.0`
  String get minimum_rate {
    return Intl.message(
      'minimum rate is 2.0',
      name: 'minimum_rate',
      desc: '',
      args: [],
    );
  }

  /// `You have already rated this order`
  String get rate_error_msg {
    return Intl.message(
      'You have already rated this order',
      name: 'rate_error_msg',
      desc: '',
      args: [],
    );
  }

  /// `welcome back`
  String get welcome_back {
    return Intl.message(
      'welcome back',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Payment Methods`
  String get payment_methods {
    return Intl.message(
      'Payment Methods',
      name: 'payment_methods',
      desc: '',
      args: [],
    );
  }

  /// `The payment was completed successfully`
  String get the_payment_was_completed_successfully {
    return Intl.message(
      'The payment was completed successfully',
      name: 'the_payment_was_completed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Follow your orders from my wish list`
  String get follow_your_orders_from_my_wish_list {
    return Intl.message(
      'Follow your orders from my wish list',
      name: 'follow_your_orders_from_my_wish_list',
      desc: '',
      args: [],
    );
  }

  /// `There are some problems with payment`
  String get there_are_some_problems_with_payment {
    return Intl.message(
      'There are some problems with payment',
      name: 'there_are_some_problems_with_payment',
      desc: '',
      args: [],
    );
  }

  /// `If this problem persists, please contact your bank`
  String get payment_failed_msg {
    return Intl.message(
      'If this problem persists, please contact your bank',
      name: 'payment_failed_msg',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get try_again {
    return Intl.message(
      'Try again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `all`
  String get all {
    return Intl.message(
      'all',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `highest rating`
  String get highest_rating {
    return Intl.message(
      'highest rating',
      name: 'highest_rating',
      desc: '',
      args: [],
    );
  }

  /// `closest`
  String get closest {
    return Intl.message(
      'closest',
      name: 'closest',
      desc: '',
      args: [],
    );
  }

  /// `best price`
  String get best {
    return Intl.message(
      'best price',
      name: 'best',
      desc: '',
      args: [],
    );
  }

  /// `search in services`
  String get search_in_services {
    return Intl.message(
      'search in services',
      name: 'search_in_services',
      desc: '',
      args: [],
    );
  }

  /// `Customer code`
  String get customer_code {
    return Intl.message(
      'Customer code',
      name: 'customer_code',
      desc: '',
      args: [],
    );
  }

  /// `Sort by`
  String get sort_by {
    return Intl.message(
      'Sort by',
      name: 'sort_by',
      desc: '',
      args: [],
    );
  }

  /// `Reference number`
  String get reference_number {
    return Intl.message(
      'Reference number',
      name: 'reference_number',
      desc: '',
      args: [],
    );
  }

  /// `Please go to the laboratory branch and ask the receptionist to search for an email with the order number and in the name of Refine, then give him the order number and the customer code found in the order details.`
  String get order_detail_msg {
    return Intl.message(
      'Please go to the laboratory branch and ask the receptionist to search for an email with the order number and in the name of Refine, then give him the order number and the customer code found in the order details.',
      name: 'order_detail_msg',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your wallet number`
  String get enter_your_wallet_number {
    return Intl.message(
      'Please enter your wallet number',
      name: 'enter_your_wallet_number',
      desc: '',
      args: [],
    );
  }

  /// `complete your order`
  String get complete_your_order {
    return Intl.message(
      'complete your order',
      name: 'complete_your_order',
      desc: '',
      args: [],
    );
  }

  /// `select payment`
  String get select_payment {
    return Intl.message(
      'select payment',
      name: 'select_payment',
      desc: '',
      args: [],
    );
  }

  /// `please go to the nearest Aman, Masary, Possible, or Sadad branch and ask for “Accept Payments” and provide your reference number.`
  String get kiosk_msg {
    return Intl.message(
      'please go to the nearest Aman, Masary, Possible, or Sadad branch and ask for “Accept Payments” and provide your reference number.',
      name: 'kiosk_msg',
      desc: '',
      args: [],
    );
  }

  /// `search`
  String get search {
    return Intl.message(
      'search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get delete_account {
    return Intl.message(
      'Delete account',
      name: 'delete_account',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
