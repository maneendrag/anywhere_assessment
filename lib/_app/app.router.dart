// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:checkscheme/screens/landing/landing_screen.dart' as _i3;
import 'package:checkscheme/screens/landing/landing_screen_response.dart'
    as _i6;
import 'package:checkscheme/screens/landing_details/landing_details%20_screen.dart'
    as _i4;
import 'package:checkscheme/screens/splash_screen.dart' as _i2;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i7;

class Routes {
  static const splashScreen = '/';

  static const landingScreen = '/landing-screen';

  static const landingDetailsScreen = '/landing-details-screen';

  static const all = <String>{
    splashScreen,
    landingScreen,
    landingDetailsScreen,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashScreen,
      page: _i2.SplashScreen,
    ),
    _i1.RouteDef(
      Routes.landingScreen,
      page: _i3.LandingScreen,
    ),
    _i1.RouteDef(
      Routes.landingDetailsScreen,
      page: _i4.LandingDetailsScreen,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashScreen: (data) {
      final args = data.getArgs<SplashScreenArguments>(
        orElse: () => const SplashScreenArguments(),
      );
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => _i2.SplashScreen(key: args.key),
        settings: data,
      );
    },
    _i3.LandingScreen: (data) {
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.LandingScreen(),
        settings: data,
      );
    },
    _i4.LandingDetailsScreen: (data) {
      final args = data.getArgs<LandingDetailsScreenArguments>(nullOk: false);
      return _i5.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.LandingDetailsScreen(
            key: args.key, relatedTopicsData: args.relatedTopicsData),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class SplashScreenArguments {
  const SplashScreenArguments({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant SplashScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

class LandingDetailsScreenArguments {
  const LandingDetailsScreenArguments({
    this.key,
    required this.relatedTopicsData,
  });

  final _i5.Key? key;

  final _i6.RelatedTopics relatedTopicsData;

  @override
  String toString() {
    return '{"key": "$key", "relatedTopicsData": "$relatedTopicsData"}';
  }

  @override
  bool operator ==(covariant LandingDetailsScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.relatedTopicsData == relatedTopicsData;
  }

  @override
  int get hashCode {
    return key.hashCode ^ relatedTopicsData.hashCode;
  }
}

extension NavigatorStateExtension on _i7.NavigationService {
  Future<dynamic> navigateToSplashScreen({
    _i5.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.splashScreen,
        arguments: SplashScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLandingScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.landingScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLandingDetailsScreen({
    _i5.Key? key,
    required _i6.RelatedTopics relatedTopicsData,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.landingDetailsScreen,
        arguments: LandingDetailsScreenArguments(
            key: key, relatedTopicsData: relatedTopicsData),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashScreen({
    _i5.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.splashScreen,
        arguments: SplashScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLandingScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.landingScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLandingDetailsScreen({
    _i5.Key? key,
    required _i6.RelatedTopics relatedTopicsData,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.landingDetailsScreen,
        arguments: LandingDetailsScreenArguments(
            key: key, relatedTopicsData: relatedTopicsData),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
