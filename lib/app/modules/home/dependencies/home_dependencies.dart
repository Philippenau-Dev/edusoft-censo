import 'package:censo/app/core/repositorie/repositorie.dart';
import 'package:censo/app/core/repositorie/repositorie_impl.dart';
import 'package:censo/app/core/rest_client/rest_client.dart';
import 'package:censo/app/modules/home/controller/home_controller.dart';
import 'package:get_it/get_it.dart';

Future<void> initHomeDependencies(GetIt getIt) async {
  getIt.registerLazySingleton<Repositorie>(
    () => RepositorieImpl(
      client: getIt<RestClient>(),
    ),
  );
  getIt.registerLazySingleton<HomeController>(
    () => HomeController(
      repositorie: getIt<Repositorie>(),
    ),
  );
}
