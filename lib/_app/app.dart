import 'package:checkscheme/_app/api_service.dart';
import 'package:checkscheme/screens/landing/landing_screen.dart';
import 'package:checkscheme/screens/landing_details/landing_details%20_screen.dart';
import 'package:checkscheme/screens/splash_screen.dart';

import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes:[
  MaterialRoute(initial: true,page: SplashScreen),
  MaterialRoute(page: LandingScreen),
  MaterialRoute(page: LandingDetailsScreen),

], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: SnackbarService),
  LazySingleton(classType: ApiService),
]
)class Appetup {}