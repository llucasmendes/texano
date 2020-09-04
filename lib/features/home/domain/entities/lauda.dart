import 'package:meta/meta.dart';

class Lauda {
  Lauda({
    @required this.id,
    @required this.titulo,
    @required this.conteudo,
    @required this.data,
    @required this.corTexto,
    @required this.corFundo,
    @required this.tamanhoTexto,
    @required this.velocidadeRolagem,
  });

  final int id;
  String titulo;
  String conteudo;
  DateTime data;
  String corTexto;
  String corFundo;
  double tamanhoTexto;
  double velocidadeRolagem;
}
