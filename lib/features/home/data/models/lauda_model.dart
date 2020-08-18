import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:meta/meta.dart';

class LaudaModel extends Lauda {
  LaudaModel({
    @required int id,
    @required String titulo,
    @required String conteudo,
    @required DateTime data,
  }) : super(
          id: id,
          titulo: titulo,
          conteudo: conteudo,
          data: data,
        );

  factory LaudaModel.fromMap(Map<String, dynamic> dados) {
    return LaudaModel(
      id: dados['id'],
      titulo: dados['titulo'],
      conteudo: dados['conteudo'],
      data: dados['data'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'conteudo': conteudo,
      'data': data,
    };
  }
}
