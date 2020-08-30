import 'package:meta/meta.dart';
import 'package:texano/core/data/moor_database.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/home/domain/entities/preferencia.dart';

class HomeDataSource {
  HomeDataSource({@required this.database});

  final AppDatabase database;

  Future<List<Lauda>> getLaudasSalvas() async {
    List<LaudasTableData> laudasBanco = await database.getAllLaudas();
    return laudasBanco
        .map(
          (_) => Lauda(
            conteudo: _.texto,
            data: _.data,
            id: _.id,
            titulo: _.titulo,
          ),
        )
        .toList();
  }

  Future<List<Preferencia>> getPreferenciasSalvas() async {
    List<PreferenciasTableData> preferenciasBanco =
        await database.getAllPreferencias();
    return preferenciasBanco
        .map(
          (_) => Preferencia(
            id: _.id,
            corFundo: _.corFundo,
            corTexto: _.corTexto,
            tamanhoTexto: _.tamanhoTexto,
            velocidadeRolagem: _.velocidadeRolagem,
          ),
        )
        .toList();
  }

  Future<int> insertLauda(Lauda lauda) async {
    final data = LaudasTableData(
      texto: lauda.conteudo,
      titulo: lauda.titulo,
      data: DateTime.now(),
      id: null,
    );
    return database.insertLaudas(data);
  }

  Future<int> insertPreferencia(Preferencia preferencia) async {
    final data = PreferenciasTableData(
      corFundo: preferencia.corFundo,
      corTexto: preferencia.corTexto,
      id: null,
      tamanhoTexto: preferencia.tamanhoTexto,
      velocidadeRolagem: preferencia.velocidadeRolagem,
    );
    return database.insertPreferencias(data);
  }

  Future deleteLauda(Lauda lauda) async {
    final data = LaudasTableData(
      id: lauda.id,
      texto: lauda.conteudo,
      titulo: lauda.titulo,
      data: DateTime.now(),
    );
    database.deleteLaudas(data);
  }

  Future deletePreferencia(Preferencia preferencia) async {
    final data = PreferenciasTableData(
      corFundo: preferencia.corFundo,
      corTexto: preferencia.corTexto,
      id: null,
      tamanhoTexto: preferencia.tamanhoTexto,
      velocidadeRolagem: preferencia.velocidadeRolagem,
    );
    database.deletePreferencias(data);
  }

  Future updateLauda(Lauda lauda) async {
    final data = LaudasTableData(
      id: lauda.id,
      texto: lauda.conteudo,
      titulo: lauda.titulo,
      data: DateTime.now(),
    );
    database.updateLaudas(data);
  }

  Future updatePreferencia(Preferencia preferencia) async {
    final data = PreferenciasTableData(
      corFundo: preferencia.corFundo,
      corTexto: preferencia.corTexto,
      id: null,
      tamanhoTexto: preferencia.tamanhoTexto,
      velocidadeRolagem: preferencia.velocidadeRolagem,
    );
    database.updatePreferencias(data);
  }
}
