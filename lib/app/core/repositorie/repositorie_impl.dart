import 'package:censo/app/core/repositorie/repositorie.dart';
import 'package:censo/app/core/rest_client/rest_client.dart';
import 'package:censo/app/modules/home/data/model/censo_model.dart';

class RepositorieImpl implements Repositorie {
  RepositorieImpl({
    required RestClient client,
  }) : _client = client;

  final RestClient _client;
  @override
  Future<List<CensoModel>> getCenso() async {
    final result = await _client.get<List<dynamic>>();
    final list = result.data
        .map(
          (e) => CensoModel.fromMap(e),
        )
        .toList();

    return list;
  }
}
