import 'package:censo/app/core/repositorie/repositorie.dart';
import 'package:censo/app/modules/home/controller/states/home_states.dart';
import 'package:flutter/material.dart';

class HomeController extends ValueNotifier<HomeStates> {
  HomeController({
    required Repositorie repositorie,
  })  : _repositorie = repositorie,
        super(
          HomeLoading(),
        );

  final Repositorie _repositorie;

  Future<void> getCiscoList() async {
    value = HomeLoading();
    try {
      final censoList = await _repositorie.getCenso();
      value = HomeSuccess(
        censoList: censoList,
      );
    } catch (e) {
      value = HomeError(
        e.toString(),
      );
    }
  }
}
