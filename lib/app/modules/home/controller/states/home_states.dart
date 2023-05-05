import 'package:censo/app/modules/home/data/model/censo_model.dart';

abstract class HomeStates {}

class HomeLoading extends HomeStates {}

class HomeSuccess extends HomeStates {
  final List<CensoModel> censoList;

  HomeSuccess({
    required this.censoList,
  });
}

class HomeError extends HomeStates {
  final String message;

  HomeError(this.message);
}
