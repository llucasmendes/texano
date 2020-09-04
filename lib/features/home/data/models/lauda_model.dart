import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:meta/meta.dart';

class LaudaModel extends Lauda {
  LaudaModel({
    @required int id,
    @required String titulo,
    @required String conteudo,
    @required DateTime data,
    @required String corTexto,
    @required String corFundo,
    @required double tamanhoTexto,
    @required double velocidadeRolagem,
  }) : super(
          id: id,
          titulo: titulo,
          conteudo: conteudo,
          data: data,
          corFundo: corFundo,
          corTexto: corTexto,
          tamanhoTexto: tamanhoTexto,
          velocidadeRolagem: velocidadeRolagem,
        );

  factory LaudaModel.fromMap(Map<String, dynamic> dados) {
    return LaudaModel(
      id: dados['id'],
      titulo: dados['titulo'],
      conteudo: dados['conteudo'],
      data: dados['data'],
      corFundo: dados['corFundo'],
      corTexto: dados['corTexto'],
      tamanhoTexto: dados['tamanhoTexto'],
      velocidadeRolagem: dados['velocidadeRolagem'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'conteudo': conteudo,
      'data': data,
      'corFundo': corFundo,
      'corTexto': corTexto,
      'tamanhoTexto': tamanhoTexto,
      'velocidadeRolagem': velocidadeRolagem,
    };
  }
}
