import 'package:censo/app/core/routes/named_routes.dart';
import 'package:censo/app/modules/home/controller/home_controller.dart';
import 'package:censo/app/modules/home/controller/states/home_states.dart';
import 'package:censo/app/modules/home/data/model/censo_model.dart';
import 'package:censo/app/modules/home/presentation/widgets/censo_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required HomeController controller,
  }) : _controller = controller;

  final HomeController _controller;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget._controller.getCiscoList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Nomes - Censo'),
      ),
      body: ValueListenableBuilder<HomeStates>(
        valueListenable: widget._controller,
        builder: (context, state, _) {
          if (state is HomeSuccess) {
            return _CensoListView(
              list: state.censoList,
              onRefresh: widget._controller.getCiscoList,
            );
          } else if (state is HomeError) {
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Text(state.message),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class _CensoListView extends StatelessWidget {
  const _CensoListView({
    required this.list,
    required this.onRefresh,
  });

  final List<CensoModel> list;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: list.length,
        itemBuilder: (context, index) => CensoCard(
          name: list[index].nome,
          rank: list[index].rank.toString(),
          onTap: () async => await Navigator.of(context).pushNamed(
            NamedRoutes.detail,
            arguments: list[index],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 5),
      ),
    );
  }
}
