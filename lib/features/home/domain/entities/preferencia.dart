import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Preferencia extends Equatable {
  Preferencia({
    @required this.id,
    @required this.corTexto,
    @required this.corFundo,
    @required this.tamanhoTexto,
    @required this.velocidadeRolagem,
  });

  final int id;
  final String corTexto;
  final String corFundo;
  final int tamanhoTexto;
  final int velocidadeRolagem;

  @override
  List<Object> get props => [
        id,
        corTexto,
        corFundo,
        tamanhoTexto,
        velocidadeRolagem,
      ];
}
