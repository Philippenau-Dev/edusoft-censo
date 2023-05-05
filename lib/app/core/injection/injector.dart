import 'package:censo/app/core/rest_client/http_rest_client.dart';
import 'package:censo/app/core/rest_client/rest_client.dart';
import 'package:censo/app/modules/home/dependencies/home_dependencies.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton(
    () => Client(),
  );
  getIt.registerLazySingleton<RestClient>(
    () => HttpRestClient(
      http: getIt<Client>(),
    ),
  );

  await initHomeDependencies(getIt);
}
