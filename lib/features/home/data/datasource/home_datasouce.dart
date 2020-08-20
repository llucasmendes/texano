import 'package:meta/meta.dart';
import 'package:texano/core/data/moor_database.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';

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

  Future insertLauda(Lauda lauda) async {
    final data = LaudasTableData(
      id: lauda.id,
      texto: lauda.conteudo,
      titulo: lauda.titulo,
      data: DateTime.now(),
    );
    database.insertLaudas(data);
  }

  Future deleteLauda() async {}

  Future updateLauda(Lauda lauda) async {
    final data = LaudasTableData(
      id: lauda.id,
      texto: lauda.conteudo,
      titulo: lauda.titulo,
      data: DateTime.now(),
    );
    database.updateLaudas(data);
  }
}
