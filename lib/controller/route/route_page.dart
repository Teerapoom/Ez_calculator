import 'package:flutter_ez_calculator/view/calculation/sum.dart';
import 'package:get/get.dart';

class RoutePage {
  static String routeSumPage = '/sumpage';

  static List<GetPage> getPage = [
    GetPage(
        name: RoutePage.routeSumPage,
        page: () => SumPage(),
        transition: Transition.noTransition),
  ];
}
