import 'dart:convert';

class CensoModel {
  final String nome;
  final int regiao;
  final int freq;
  final int rank;
  final String sexo;

  CensoModel({
    required this.nome,
    required this.regiao,
    required this.freq,
    required this.rank,
    required this.sexo,
  });

  factory CensoModel.fromMap(Map<String, dynamic> map) {
    return CensoModel(
      nome: map['nome'] as String,
      regiao: map['regiao'] as int,
      freq: map['freq'] as int,
      rank: map['rank'] as int,
      sexo: map['sexo'] as String,
    );
  }

  factory CensoModel.fromJson(String source) =>
      CensoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  CensoModel copyWith({
    String? nome,
    int? regiao,
    int? freq,
    int? rank,
    String? sexo,
  }) {
    return CensoModel(
      nome: nome ?? this.nome,
      regiao: regiao ?? this.regiao,
      freq: freq ?? this.freq,
      rank: rank ?? this.rank,
      sexo: sexo ?? this.sexo,
    );
  }

  @override
  String toString() {
    return 'CensoModel(nome: $nome, regiao: $regiao, freq: $freq, rank: $rank, sexo: $sexo)';
  }
}
