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

  /// `Select Language`
  String get select_language {
    return Intl.message(
      'Select Language',
      name: 'select_language',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get get_started {
    return Intl.message(
      'Start',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Find`
  String get onboarding_title_1 {
    return Intl.message(
      'Find',
      name: 'onboarding_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Compare`
  String get onboarding_title_2 {
    return Intl.message(
      'Compare',
      name: 'onboarding_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Get`
  String get onboarding_title_3 {
    return Intl.message(
      'Get',
      name: 'onboarding_title_3',
      desc: '',
      args: [],
    );
  }

  /// `The best educational institutions & entertainment places around you`
  String get onboarding_desc_1 {
    return Intl.message(
      'The best educational institutions & entertainment places around you',
      name: 'onboarding_desc_1',
      desc: '',
      args: [],
    );
  }

  /// `the best options that suit your aspirations and capabilities`
  String get onboarding_desc_2 {
    return Intl.message(
      'the best options that suit your aspirations and capabilities',
      name: 'onboarding_desc_2',
      desc: '',
      args: [],
    );
  }

  /// `a special discount on our various educational services & products.`
  String get onboarding_desc_3 {
    return Intl.message(
      'a special discount on our various educational services & products.',
      name: 'onboarding_desc_3',
      desc: '',
      args: [],
    );
  }

  /// `SKIP`
  String get skip {
    return Intl.message(
      'SKIP',
      name: 'skip',
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

  /// `BACK`
  String get back {
    return Intl.message(
      'BACK',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `SIGN UP`
  String get sign_up {
    return Intl.message(
      'SIGN UP',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Create one`
  String get create_one {
    return Intl.message(
      'Create one',
      name: 'create_one',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Remember my username and password`
  String get remember_me {
    return Intl.message(
      'Remember my username and password',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Continue as a guest`
  String get continue_as_guest {
    return Intl.message(
      'Continue as a guest',
      name: 'continue_as_guest',
      desc: '',
      args: [],
    );
  }

  /// `Explore the app`
  String get explore_the_app {
    return Intl.message(
      'Explore the app',
      name: 'explore_the_app',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continue_with_google {
    return Intl.message(
      'Continue with Google',
      name: 'continue_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Apple`
  String get continue_with_apple {
    return Intl.message(
      'Continue with Apple',
      name: 'continue_with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Email`
  String get continue_with_email {
    return Intl.message(
      'Continue with Email',
      name: 'continue_with_email',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `already have an account? `
  String get already_have_an_account {
    return Intl.message(
      'already have an account? ',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get first_name {
    return Intl.message(
      'First Name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message(
      'Last Name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get number {
    return Intl.message(
      'Number',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get email_address {
    return Intl.message(
      'Email address',
      name: 'email_address',
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

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `wrong password`
  String get wrong_password {
    return Intl.message(
      'wrong password',
      name: 'wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account or signing you agree to our`
  String get terms_and_conditions_desc {
    return Intl.message(
      'By creating an account or signing you agree to our',
      name: 'terms_and_conditions_desc',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get terms_and_conditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'terms_and_conditions',
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

  /// `Please enter the 6-digit code sent to your whatsapp with number`
  String get verify_desc {
    return Intl.message(
      'Please enter the 6-digit code sent to your whatsapp with number',
      name: 'verify_desc',
      desc: '',
      args: [],
    );
  }

  /// ` for verification.`
  String get verify_desc_cont {
    return Intl.message(
      ' for verification.',
      name: 'verify_desc_cont',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive any code? `
  String get didnt_receive_any_code {
    return Intl.message(
      'Didn\'t receive any code? ',
      name: 'didnt_receive_any_code',
      desc: '',
      args: [],
    );
  }

  /// `Resend Again`
  String get resend_again {
    return Intl.message(
      'Resend Again',
      name: 'resend_again',
      desc: '',
      args: [],
    );
  }

  /// `Request new code in`
  String get request_new_code_in {
    return Intl.message(
      'Request new code in',
      name: 'request_new_code_in',
      desc: '',
      args: [],
    );
  }

  /// `You’ll be signed in to your account momentarily. If nothing happens, click continue.`
  String get accept_desc {
    return Intl.message(
      'You’ll be signed in to your account momentarily. If nothing happens, click continue.',
      name: 'accept_desc',
      desc: '',
      args: [],
    );
  }

  /// `CONTINUE`
  String get continue_accept {
    return Intl.message(
      'CONTINUE',
      name: 'continue_accept',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get welcome_to {
    return Intl.message(
      'Welcome to',
      name: 'welcome_to',
      desc: '',
      args: [],
    );
  }

  /// `Customizing your experience....`
  String get customizing_your_experience {
    return Intl.message(
      'Customizing your experience....',
      name: 'customizing_your_experience',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get forget_password {
    return Intl.message(
      'Forget Password?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Not register yet? `
  String get not_register_yet {
    return Intl.message(
      'Not register yet? ',
      name: 'not_register_yet',
      desc: '',
      args: [],
    );
  }

  /// `Recover you password if you have forgot the password!`
  String get forget_password_submit_desc {
    return Intl.message(
      'Recover you password if you have forgot the password!',
      name: 'forget_password_submit_desc',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `We have sent an email to your email account with a verification code!`
  String get forget_password_verify_desc {
    return Intl.message(
      'We have sent an email to your email account with a verification code!',
      name: 'forget_password_verify_desc',
      desc: '',
      args: [],
    );
  }

  /// `Set your new password to log into your account!`
  String get forget_password_confirm_desc {
    return Intl.message(
      'Set your new password to log into your account!',
      name: 'forget_password_confirm_desc',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Verification code`
  String get forget_password_verification_code {
    return Intl.message(
      'Verification code',
      name: 'forget_password_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get new_password {
    return Intl.message(
      'New password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back!`
  String get welcome_back {
    return Intl.message(
      'Welcome back!',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Deliver to User - `
  String get deliver_to_user {
    return Intl.message(
      'Deliver to User - ',
      name: 'deliver_to_user',
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

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Books & Stories`
  String get books_and_stories {
    return Intl.message(
      'Books & Stories',
      name: 'books_and_stories',
      desc: '',
      args: [],
    );
  }

  /// `Best Sellers`
  String get best_sellers {
    return Intl.message(
      'Best Sellers',
      name: 'best_sellers',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Food`
  String get food {
    return Intl.message(
      'Food',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `Today's special`
  String get today_special {
    return Intl.message(
      'Today\'s special',
      name: 'today_special',
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

  /// `SEE ALL`
  String get see_all {
    return Intl.message(
      'SEE ALL',
      name: 'see_all',
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

  /// `BooksList`
  String get books_list {
    return Intl.message(
      'BooksList',
      name: 'books_list',
      desc: '',
      args: [],
    );
  }

  /// `Restaurants`
  String get restaurants {
    return Intl.message(
      'Restaurants',
      name: 'restaurants',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Book Information`
  String get book_info_title {
    return Intl.message(
      'Book Information',
      name: 'book_info_title',
      desc: '',
      args: [],
    );
  }

  /// `Colors`
  String get colors {
    return Intl.message(
      'Colors',
      name: 'colors',
      desc: '',
      args: [],
    );
  }

  /// `Black`
  String get black {
    return Intl.message(
      'Black',
      name: 'black',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message(
      'Version',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size_option_title {
    return Intl.message(
      'Size',
      name: 'size_option_title',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version_option_title {
    return Intl.message(
      'Version',
      name: 'version_option_title',
      desc: '',
      args: [],
    );
  }

  /// `details`
  String get laptop_details_title {
    return Intl.message(
      'details',
      name: 'laptop_details_title',
      desc: '',
      args: [],
    );
  }

  /// `sold by`
  String get seller_by {
    return Intl.message(
      'sold by',
      name: 'seller_by',
      desc: '',
      args: [],
    );
  }

  /// `Display`
  String get display {
    return Intl.message(
      'Display',
      name: 'display',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews_title {
    return Intl.message(
      'Reviews',
      name: 'reviews_title',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...`
  String get review_placeholder {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
      name: 'review_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `rating`
  String get rating {
    return Intl.message(
      'rating',
      name: 'rating',
      desc: '',
      args: [],
    );
  }

  /// `More from`
  String get more_from {
    return Intl.message(
      'More from',
      name: 'more_from',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Email`
  String get email_validation_error {
    return Intl.message(
      'Please Enter Your Email',
      name: 'email_validation_error',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Valid email as example@gmail.com`
  String get email_invalid_error {
    return Intl.message(
      'Please Enter Valid email as example@gmail.com',
      name: 'email_invalid_error',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Password`
  String get password_validation_error {
    return Intl.message(
      'Please Enter Your Password',
      name: 'password_validation_error',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Phone Number`
  String get phone_number_empty_error {
    return Intl.message(
      'Please Enter Your Phone Number',
      name: 'phone_number_empty_error',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Valid Phone Number`
  String get phone_number_invalid_error {
    return Intl.message(
      'Please Enter Valid Phone Number',
      name: 'phone_number_invalid_error',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Name`
  String get name_validation_error {
    return Intl.message(
      'Please Enter Your Name',
      name: 'name_validation_error',
      desc: '',
      args: [],
    );
  }

  /// `My Cart`
  String get my_cart {
    return Intl.message(
      'My Cart',
      name: 'my_cart',
      desc: '',
      args: [],
    );
  }

  /// `Books Shop`
  String get books_shop {
    return Intl.message(
      'Books Shop',
      name: 'books_shop',
      desc: '',
      args: [],
    );
  }

  /// `Promo Code`
  String get promo_code {
    return Intl.message(
      'Promo Code',
      name: 'promo_code',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal :`
  String get subtotal {
    return Intl.message(
      'Subtotal :',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Shipping :`
  String get shipping {
    return Intl.message(
      'Shipping :',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Discount :`
  String get discount {
    return Intl.message(
      'Discount :',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Total :`
  String get total {
    return Intl.message(
      'Total :',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to Checkout`
  String get proceed_to_checkout {
    return Intl.message(
      'Proceed to Checkout',
      name: 'proceed_to_checkout',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Card`
  String get card {
    return Intl.message(
      'Card',
      name: 'card',
      desc: '',
      args: [],
    );
  }

  /// `Bank Account`
  String get bankAccount {
    return Intl.message(
      'Bank Account',
      name: 'bankAccount',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Method`
  String get deliveryMethod {
    return Intl.message(
      'Delivery Method',
      name: 'deliveryMethod',
      desc: '',
      args: [],
    );
  }

  /// `Door Delivery`
  String get doorDelivery {
    return Intl.message(
      'Door Delivery',
      name: 'doorDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Pick Up`
  String get pickUp {
    return Intl.message(
      'Pick Up',
      name: 'pickUp',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message(
      'Delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Address Details`
  String get addressDetails {
    return Intl.message(
      'Address Details',
      name: 'addressDetails',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `No address chosen`
  String get no_address_chosen {
    return Intl.message(
      'No address chosen',
      name: 'no_address_chosen',
      desc: '',
      args: [],
    );
  }

  /// `Promo Code`
  String get promoCode {
    return Intl.message(
      'Promo Code',
      name: 'promoCode',
      desc: '',
      args: [],
    );
  }

  /// `Place your order`
  String get proceedToPayment {
    return Intl.message(
      'Place your order',
      name: 'proceedToPayment',
      desc: '',
      args: [],
    );
  }

  /// `Please accept the terms and conditions`
  String get accept_the_terms_and_conditions {
    return Intl.message(
      'Please accept the terms and conditions',
      name: 'accept_the_terms_and_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Add Note`
  String get add_note {
    return Intl.message(
      'Add Note',
      name: 'add_note',
      desc: '',
      args: [],
    );
  }

  /// `Add Opinion`
  String get add_opinion {
    return Intl.message(
      'Add Opinion',
      name: 'add_opinion',
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

  /// `Type your name`
  String get type_your_name {
    return Intl.message(
      'Type your name',
      name: 'type_your_name',
      desc: '',
      args: [],
    );
  }

  /// `How was your experience ?`
  String get how_was_your_experience {
    return Intl.message(
      'How was your experience ?',
      name: 'how_was_your_experience',
      desc: '',
      args: [],
    );
  }

  /// `Describe your experience ?`
  String get describe_your_experience {
    return Intl.message(
      'Describe your experience ?',
      name: 'describe_your_experience',
      desc: '',
      args: [],
    );
  }

  /// `Star`
  String get star {
    return Intl.message(
      'Star',
      name: 'star',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get order_id {
    return Intl.message(
      'Order ID',
      name: 'order_id',
      desc: '',
      args: [],
    );
  }

  /// `Order Date`
  String get order_date {
    return Intl.message(
      'Order Date',
      name: 'order_date',
      desc: '',
      args: [],
    );
  }

  /// `Estimated Delivery`
  String get estimated_delivery {
    return Intl.message(
      'Estimated Delivery',
      name: 'estimated_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Order Confirmed`
  String get order_confirmed {
    return Intl.message(
      'Order Confirmed',
      name: 'order_confirmed',
      desc: '',
      args: [],
    );
  }

  /// `Shipped`
  String get shipped {
    return Intl.message(
      'Shipped',
      name: 'shipped',
      desc: '',
      args: [],
    );
  }

  /// `Out for Delivery`
  String get out_for_delivery {
    return Intl.message(
      'Out for Delivery',
      name: 'out_for_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message(
      'Delivered',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `Expected by,`
  String get expected_by {
    return Intl.message(
      'Expected by,',
      name: 'expected_by',
      desc: '',
      args: [],
    );
  }

  /// `Qty`
  String get qty {
    return Intl.message(
      'Qty',
      name: 'qty',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get egp {
    return Intl.message(
      'EGP',
      name: 'egp',
      desc: '',
      args: [],
    );
  }

  /// `Personal details`
  String get personal_details {
    return Intl.message(
      'Personal details',
      name: 'personal_details',
      desc: '',
      args: [],
    );
  }

  /// `My Adress Book`
  String get my_adress_book {
    return Intl.message(
      'My Adress Book',
      name: 'my_adress_book',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get my_orders {
    return Intl.message(
      'My Orders',
      name: 'my_orders',
      desc: '',
      args: [],
    );
  }

  /// `My Appointments`
  String get my_appointments {
    return Intl.message(
      'My Appointments',
      name: 'my_appointments',
      desc: '',
      args: [],
    );
  }

  /// `Privacy and Policy`
  String get privacy_and_policy {
    return Intl.message(
      'Privacy and Policy',
      name: 'privacy_and_policy',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get log_out {
    return Intl.message(
      'Log Out',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Add to basket`
  String get add_to_basket {
    return Intl.message(
      'Add to basket',
      name: 'add_to_basket',
      desc: '',
      args: [],
    );
  }

  /// `Size Selection`
  String get size_selection {
    return Intl.message(
      'Size Selection',
      name: 'size_selection',
      desc: '',
      args: [],
    );
  }

  /// `Select Size:`
  String get select_size {
    return Intl.message(
      'Select Size:',
      name: 'select_size',
      desc: '',
      args: [],
    );
  }

  /// `Regular`
  String get regular {
    return Intl.message(
      'Regular',
      name: 'regular',
      desc: '',
      args: [],
    );
  }

  /// `Double`
  String get double {
    return Intl.message(
      'Double',
      name: 'double',
      desc: '',
      args: [],
    );
  }

  /// `Extra Side:`
  String get extra_side {
    return Intl.message(
      'Extra Side:',
      name: 'extra_side',
      desc: '',
      args: [],
    );
  }

  /// `French Fries`
  String get french_fries {
    return Intl.message(
      'French Fries',
      name: 'french_fries',
      desc: '',
      args: [],
    );
  }

  /// `Coleslaw Salad`
  String get coleslaw_salad {
    return Intl.message(
      'Coleslaw Salad',
      name: 'coleslaw_salad',
      desc: '',
      args: [],
    );
  }

  /// `Special Notes`
  String get special_notes {
    return Intl.message(
      'Special Notes',
      name: 'special_notes',
      desc: '',
      args: [],
    );
  }

  /// `eg. Please don’t add onion`
  String get special_notes_placeholder {
    return Intl.message(
      'eg. Please don’t add onion',
      name: 'special_notes_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get add_to_cart {
    return Intl.message(
      'Add to Cart',
      name: 'add_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Small`
  String get small {
    return Intl.message(
      'Small',
      name: 'small',
      desc: '',
      args: [],
    );
  }

  /// `Medium`
  String get medium {
    return Intl.message(
      'Medium',
      name: 'medium',
      desc: '',
      args: [],
    );
  }

  /// `Large`
  String get large {
    return Intl.message(
      'Large',
      name: 'large',
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

  /// `Address`
  String get address_duplicate {
    return Intl.message(
      'Address',
      name: 'address_duplicate',
      desc: '',
      args: [],
    );
  }

  /// `Address Type`
  String get address_type {
    return Intl.message(
      'Address Type',
      name: 'address_type',
      desc: '',
      args: [],
    );
  }

  /// `Work`
  String get work {
    return Intl.message(
      'Work',
      name: 'work',
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

  /// `Main Location`
  String get main_location {
    return Intl.message(
      'Main Location',
      name: 'main_location',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get street {
    return Intl.message(
      'Street',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `Building Number`
  String get building_number {
    return Intl.message(
      'Building Number',
      name: 'building_number',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Other Addresses`
  String get other_addresses {
    return Intl.message(
      'Other Addresses',
      name: 'other_addresses',
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

  /// `Add New Address`
  String get add_new_address {
    return Intl.message(
      'Add New Address',
      name: 'add_new_address',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
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

  /// `My Info`
  String get my_info {
    return Intl.message(
      'My Info',
      name: 'my_info',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get current_password {
    return Intl.message(
      'Current Password',
      name: 'current_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get save_changes {
    return Intl.message(
      'Save Changes',
      name: 'save_changes',
      desc: '',
      args: [],
    );
  }

  /// `Delete Card`
  String get delete_card {
    return Intl.message(
      'Delete Card',
      name: 'delete_card',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this card?`
  String get delete_dialog_content {
    return Intl.message(
      'Are you sure you want to delete this card?',
      name: 'delete_dialog_content',
      desc: '',
      args: [],
    );
  }

  /// `Delete Address`
  String get delete_address {
    return Intl.message(
      'Delete Address',
      name: 'delete_address',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this address?`
  String get delete_address_content {
    return Intl.message(
      'Are you sure you want to delete this address?',
      name: 'delete_address_content',
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

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Debit/Credit Card`
  String get debit_or_credit_card {
    return Intl.message(
      'Debit/Credit Card',
      name: 'debit_or_credit_card',
      desc: '',
      args: [],
    );
  }

  /// `Card ending`
  String get card_ending {
    return Intl.message(
      'Card ending',
      name: 'card_ending',
      desc: '',
      args: [],
    );
  }

  /// `Set as Default`
  String get set_as_default {
    return Intl.message(
      'Set as Default',
      name: 'set_as_default',
      desc: '',
      args: [],
    );
  }

  /// `Add new card`
  String get add_new_card {
    return Intl.message(
      'Add new card',
      name: 'add_new_card',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get card_number {
    return Intl.message(
      'Card Number',
      name: 'card_number',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get expiry_date {
    return Intl.message(
      'Expiry Date',
      name: 'expiry_date',
      desc: '',
      args: [],
    );
  }

  /// `Card holder Name`
  String get card_holder_name {
    return Intl.message(
      'Card holder Name',
      name: 'card_holder_name',
      desc: '',
      args: [],
    );
  }

  /// `All Orders`
  String get all_orders {
    return Intl.message(
      'All Orders',
      name: 'all_orders',
      desc: '',
      args: [],
    );
  }

  /// `Ordered on`
  String get ordered_on {
    return Intl.message(
      'Ordered on',
      name: 'ordered_on',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `You need to log in.`
  String get login_dialog_content {
    return Intl.message(
      'You need to log in.',
      name: 'login_dialog_content',
      desc: '',
      args: [],
    );
  }

  /// `There is an error `
  String get there_is_an_error {
    return Intl.message(
      'There is an error ',
      name: 'there_is_an_error',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection.`
  String get no_internet_connection {
    return Intl.message(
      'No internet connection.',
      name: 'no_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Connected.`
  String get connected {
    return Intl.message(
      'Connected.',
      name: 'connected',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Currently not available`
  String get not_available {
    return Intl.message(
      'Currently not available',
      name: 'not_available',
      desc: '',
      args: [],
    );
  }

  /// `Please select an option`
  String get select_option_prompt {
    return Intl.message(
      'Please select an option',
      name: 'select_option_prompt',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your address.`
  String get address_validator_empty {
    return Intl.message(
      'Please enter your address.',
      name: 'address_validator_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your postal code.`
  String get postal_code_validator_empty {
    return Intl.message(
      'Please enter your postal code.',
      name: 'postal_code_validator_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid 5-digit postal code.`
  String get postal_code_validator_invalid {
    return Intl.message(
      'Please enter a valid 5-digit postal code.',
      name: 'postal_code_validator_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your floor number.`
  String get floor_number_validator_empty {
    return Intl.message(
      'Please enter your floor number.',
      name: 'floor_number_validator_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your building number.`
  String get building_number_validator_empty {
    return Intl.message(
      'Please enter your building number.',
      name: 'building_number_validator_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter address type.`
  String get enter_address_type {
    return Intl.message(
      'Please enter address type.',
      name: 'enter_address_type',
      desc: '',
      args: [],
    );
  }

  /// `try again`
  String get try_again {
    return Intl.message(
      'try again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get major_error {
    return Intl.message(
      'Something went wrong',
      name: 'major_error',
      desc: '',
      args: [],
    );
  }

  /// `postal code`
  String get postal_code {
    return Intl.message(
      'postal code',
      name: 'postal_code',
      desc: '',
      args: [],
    );
  }

  /// `floor number`
  String get floor_number {
    return Intl.message(
      'floor number',
      name: 'floor_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the address type`
  String get please_enter_the_address_type {
    return Intl.message(
      'Please enter the address type',
      name: 'please_enter_the_address_type',
      desc: '',
      args: [],
    );
  }

  /// `Please enter all data`
  String get please_enter_all_data {
    return Intl.message(
      'Please enter all data',
      name: 'please_enter_all_data',
      desc: '',
      args: [],
    );
  }

  /// `Choose your country`
  String get choose_your_country {
    return Intl.message(
      'Choose your country',
      name: 'choose_your_country',
      desc: '',
      args: [],
    );
  }

  /// `Choose your state`
  String get choose_your_state {
    return Intl.message(
      'Choose your state',
      name: 'choose_your_state',
      desc: '',
      args: [],
    );
  }

  /// `Choose your city`
  String get choose_your_city {
    return Intl.message(
      'Choose your city',
      name: 'choose_your_city',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Address removed`
  String get address_removed {
    return Intl.message(
      'Address removed',
      name: 'address_removed',
      desc: '',
      args: [],
    );
  }

  /// `Cart item removed`
  String get cart_item_removed {
    return Intl.message(
      'Cart item removed',
      name: 'cart_item_removed',
      desc: '',
      args: [],
    );
  }

  /// `Delete Cart Item`
  String get delete_cart_item {
    return Intl.message(
      'Delete Cart Item',
      name: 'delete_cart_item',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this cart?`
  String get delete_cart_content {
    return Intl.message(
      'Are you sure you want to delete this cart?',
      name: 'delete_cart_content',
      desc: '',
      args: [],
    );
  }

  /// `specifications`
  String get specifications {
    return Intl.message(
      'specifications',
      name: 'specifications',
      desc: '',
      args: [],
    );
  }

  /// `Book added to cart`
  String get book_added_to_cart {
    return Intl.message(
      'Book added to cart',
      name: 'book_added_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add book to cart`
  String get failed_to_add_book_to_cart {
    return Intl.message(
      'Failed to add book to cart',
      name: 'failed_to_add_book_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete cart item`
  String get failed_to_delete_cart_item {
    return Intl.message(
      'Failed to delete cart item',
      name: 'failed_to_delete_cart_item',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete address`
  String get failed_to_delete_address {
    return Intl.message(
      'Failed to delete address',
      name: 'failed_to_delete_address',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get password_changed_successfully {
    return Intl.message(
      'Password changed successfully',
      name: 'password_changed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to change password`
  String get failed_to_change_password {
    return Intl.message(
      'Failed to change password',
      name: 'failed_to_change_password',
      desc: '',
      args: [],
    );
  }

  /// `User info changed successfully`
  String get user_info_changed {
    return Intl.message(
      'User info changed successfully',
      name: 'user_info_changed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to change user info`
  String get failed_to_change_user_info {
    return Intl.message(
      'Failed to change user info',
      name: 'failed_to_change_user_info',
      desc: '',
      args: [],
    );
  }

  /// `Address updated successfully`
  String get address_updated_successfully {
    return Intl.message(
      'Address updated successfully',
      name: 'address_updated_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to update address`
  String get failed_to_update_address {
    return Intl.message(
      'Failed to update address',
      name: 'failed_to_update_address',
      desc: '',
      args: [],
    );
  }

  /// `Address added successfully`
  String get address_added_successfully {
    return Intl.message(
      'Address added successfully',
      name: 'address_added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add address`
  String get failed_to_add_address {
    return Intl.message(
      'Failed to add address',
      name: 'failed_to_add_address',
      desc: '',
      args: [],
    );
  }

  /// `Data changed successfully`
  String get data_changed_successfully {
    return Intl.message(
      'Data changed successfully',
      name: 'data_changed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to changed data`
  String get failed_to_changed_data {
    return Intl.message(
      'Failed to changed data',
      name: 'failed_to_changed_data',
      desc: '',
      args: [],
    );
  }

  /// `Press back again to close the app`
  String get press_back_again_to_close_the_app {
    return Intl.message(
      'Press back again to close the app',
      name: 'press_back_again_to_close_the_app',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
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

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Common`
  String get common {
    return Intl.message(
      'Common',
      name: 'common',
      desc: '',
      args: [],
    );
  }

  /// `General Notification`
  String get general_notification {
    return Intl.message(
      'General Notification',
      name: 'general_notification',
      desc: '',
      args: [],
    );
  }

  /// `Sound`
  String get sound {
    return Intl.message(
      'Sound',
      name: 'sound',
      desc: '',
      args: [],
    );
  }

  /// `Vibrate`
  String get vibrate {
    return Intl.message(
      'Vibrate',
      name: 'vibrate',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `New Service Available`
  String get new_service_available {
    return Intl.message(
      'New Service Available',
      name: 'new_service_available',
      desc: '',
      args: [],
    );
  }

  /// `New Tips Available`
  String get new_tips_available {
    return Intl.message(
      'New Tips Available',
      name: 'new_tips_available',
      desc: '',
      args: [],
    );
  }

  /// `System & services update`
  String get system_services_update {
    return Intl.message(
      'System & services update',
      name: 'system_services_update',
      desc: '',
      args: [],
    );
  }

  /// `App updates`
  String get app_updates {
    return Intl.message(
      'App updates',
      name: 'app_updates',
      desc: '',
      args: [],
    );
  }

  /// `Bill Reminder`
  String get bill_reminder {
    return Intl.message(
      'Bill Reminder',
      name: 'bill_reminder',
      desc: '',
      args: [],
    );
  }

  /// `Promotion`
  String get promotion {
    return Intl.message(
      'Promotion',
      name: 'promotion',
      desc: '',
      args: [],
    );
  }

  /// `Discount Available`
  String get discount_available {
    return Intl.message(
      'Discount Available',
      name: 'discount_available',
      desc: '',
      args: [],
    );
  }

  /// `Payment Request`
  String get payment_request {
    return Intl.message(
      'Payment Request',
      name: 'payment_request',
      desc: '',
      args: [],
    );
  }

  /// `you have reached the maximum limit of choices`
  String get max_limit {
    return Intl.message(
      'you have reached the maximum limit of choices',
      name: 'max_limit',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Paymob`
  String get paymob {
    return Intl.message(
      'Paymob',
      name: 'paymob',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get continue_with_facebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'continue_with_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Your cart is empty`
  String get your_cart_is_empty {
    return Intl.message(
      'Your cart is empty',
      name: 'your_cart_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `No books to show`
  String get no_books_to_display {
    return Intl.message(
      'No books to show',
      name: 'no_books_to_display',
      desc: '',
      args: [],
    );
  }

  /// `No categories to show`
  String get no_categories_to_display {
    return Intl.message(
      'No categories to show',
      name: 'no_categories_to_display',
      desc: '',
      args: [],
    );
  }

  /// `No Restaurants to show`
  String get no_restaurants_to_display {
    return Intl.message(
      'No Restaurants to show',
      name: 'no_restaurants_to_display',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters long.`
  String get password_characters {
    return Intl.message(
      'Password must be at least 8 characters long.',
      name: 'password_characters',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one capital letter.`
  String get password_contain_one_capital_letter {
    return Intl.message(
      'Password must contain at least one capital letter.',
      name: 'password_contain_one_capital_letter',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one digit.`
  String get password_contain_one_digit {
    return Intl.message(
      'Password must contain at least one digit.',
      name: 'password_contain_one_digit',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one special character.`
  String get password_contain_one_special_character {
    return Intl.message(
      'Password must contain at least one special character.',
      name: 'password_contain_one_special_character',
      desc: '',
      args: [],
    );
  }

  /// `No menus to show`
  String get no_menus_to_show {
    return Intl.message(
      'No menus to show',
      name: 'no_menus_to_show',
      desc: '',
      args: [],
    );
  }

  /// `No account found`
  String get no_account_found {
    return Intl.message(
      'No account found',
      name: 'no_account_found',
      desc: '',
      args: [],
    );
  }

  /// `No addresses found`
  String get no_addresses_found {
    return Intl.message(
      'No addresses found',
      name: 'no_addresses_found',
      desc: '',
      args: [],
    );
  }

  /// `No orders found`
  String get no_orders_found {
    return Intl.message(
      'No orders found',
      name: 'no_orders_found',
      desc: '',
      args: [],
    );
  }

  /// `adding this to cart will clear your current basket with`
  String get clear_food_cart_description {
    return Intl.message(
      'adding this to cart will clear your current basket with',
      name: 'clear_food_cart_description',
      desc: '',
      args: [],
    );
  }

  /// `start a new cart?`
  String get clear_food_cart_title {
    return Intl.message(
      'start a new cart?',
      name: 'clear_food_cart_title',
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
