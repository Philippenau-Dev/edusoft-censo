import 'package:censo/app/modules/details/presentation/widgets/detail_text.dart';
import 'package:censo/app/modules/home/data/model/censo_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final censo = ModalRoute.of(context)!.settings.arguments as CensoModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes - Censo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            DetailText(
              field: 'Nome: ',
              text: censo.nome,
            ),
            DetailText(
              field: 'Região: ',
              text: censo.regiao.toString(),
            ),
            DetailText(
              field: 'Freq: ',
              text: censo.freq.toString(),
            ),
            DetailText(
              field: 'Rank: ',
              text: censo.rank.toString(),
            ),
            DetailText(
              field: 'Sexo: ',
              text: censo.sexo,
            ),
          ],
        ),
      ),
    );
  }
}
