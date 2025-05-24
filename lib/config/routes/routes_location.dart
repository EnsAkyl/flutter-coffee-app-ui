import 'package:flutter/material.dart';

@immutable
class RouteLocation {
  const RouteLocation._();

  static String get welcome => '/welcome';

  static String get signIn => '/sign-in';

  static String get signUp => '/sign-up';
}