import 'dart:io';
import 'package:flutter/cupertino.dart';

import '../features/app_aducation/presentation/stack_and_container.dart';
import '../features/app_aducation/presentation/categori_screen.dart';
import '../features/app_aducation/presentation/categories_screen.dart';
import '../features/app_aducation/presentation/data_copriva_screen.dart';
import '../features/app_aducation/presentation/edit_profile_copy.dart';
import '../features/app_aducation/presentation/education_screeen.dart';
import '../features/app_aducation/presentation/listview_screen.dart';
import '../features/app_aducation/presentation/Clip_screen.dart';
import '../features/app_aducation/presentation/important_rating_screen.dart';
import '../features/app_aducation/presentation/splash_screen.dart';
import '../welcome_screen.dart';


final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String splashScreen = '/splashScreen';
  static const String categoriesScreen = '/categoriesScreen';
  static const String vegetables = '/vegetables';
  static const String spainScreen = '/spainScreen';
  static const String checkoutScreen = '/checkoutScreen';
  static const String Payment = '/Payment';
  static const String categoriScreen = '/categoriScreen';
  static const String lesson_Screen = '/lesson_Screen';
  static const String dataCoprivaScreen = '/dataCoprivaScreen';
  static const String backScreen = '/backScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String signInScreen = '/signInScreen';
  static const String indexScreen = '/indexScreen';
  static const String educationScreeen = '/educationScreeen';
  static const String  prograseScreen = '/ prograseScreen';
  static const String  editProfileCopy = '/ editProfileCopy';
  static const String  ratingScreen = '/ ratingScreen';



}
final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {

    switch (settings.name) {

      case Routes.categoriScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const CategoriScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const CategoriScreen());


 case Routes.dataCoprivaScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const DataCoprivaScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const DataCoprivaScreen());

 case Routes.backScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const BackScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const BackScreen());

 case Routes.welcomeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const WelcomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const WelcomeScreen());



      case Routes.splashScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const SplashScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const SplashScreen());

          case Routes.categoriesScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const CategoriesScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const CategoriesScreen());

        //   case Routes.vegetables:
        // return Platform.isAndroid
        //     ? _FadedTransitionRoute(widget: const Vegetables(), settings: settings)
        //     : CupertinoPageRoute(builder: (context) => const Vegetables());
        //
        //    case Routes.spainScreen:
        // return Platform.isAndroid
        //     ? _FadedTransitionRoute(widget: const SpainScreen(), settings: settings)
        //     : CupertinoPageRoute(builder: (context) => const SpainScreen());
        //
        //   case Routes.checkoutScreen:
        // return Platform.isAndroid
        //     ? _FadedTransitionRoute(widget: const CheckoutScreen(), settings: settings)
        //     : CupertinoPageRoute(builder: (context) => const CheckoutScreen());


case Routes.indexScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const IndexScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const IndexScreen());
case Routes.educationScreeen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const EducationScreeen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const EducationScreeen());

case Routes. prograseScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const  PrograseScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const  PrograseScreen());

case Routes. editProfileCopy:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const  EditProfileCopy(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const  EditProfileCopy());

case Routes. ratingScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: const  RatingScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => const  RatingScreen());


      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
    settings: settings,
    reverseTransitionDuration: const Duration(milliseconds: 1),
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionDuration: const Duration(milliseconds: 1),
    transitionsBuilder: (BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child) {
      return FadeTransition(
        opacity: CurvedAnimation(
          parent: animation,
          curve: Curves.ease,
        ),
        child: child,
      );
    },
  );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}


//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

