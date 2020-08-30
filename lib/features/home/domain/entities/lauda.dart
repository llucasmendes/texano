import 'package:meta/meta.dart';

class Lauda {
  Lauda({
    @required this.id,
    @required this.titulo,
    @required this.conteudo,
    @required this.data,
  });

  final int id;
  String titulo;
  String conteudo;
  DateTime data;
}
