import 'package:censo/app/core/routes/named_routes.dart';
import 'package:censo/app/modules/details/presentation/view/detail_page.dart';
import 'package:censo/app/modules/home/controller/home_controller.dart';
import 'package:censo/app/modules/home/presentation/view/home_page.dart';
import 'package:get_it/get_it.dart';

class AppRoutes {
  AppRoutes._();

  factory AppRoutes() => AppRoutes._();

  static final routes = {
    NamedRoutes.initial: (context) => HomePage(
          controller: GetIt.instance.get<HomeController>(),
        ),
    NamedRoutes.detail: (context) => const DetailPage(),
  };
}
