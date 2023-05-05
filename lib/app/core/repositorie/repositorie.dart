import 'package:censo/app/modules/home/data/model/censo_model.dart';

abstract class Repositorie {
  Future<List<CensoModel>> getCenso();
}
