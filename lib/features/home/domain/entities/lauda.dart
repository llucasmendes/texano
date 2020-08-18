import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Lauda extends Equatable {
  Lauda({
    @required this.id,
    @required this.titulo,
    @required this.conteudo,
    @required this.data,
  });

  final int id;
  final String titulo;
  final String conteudo;
  final DateTime data;

  @override
  List<Object> get props => [id, titulo, conteudo, data];
}
