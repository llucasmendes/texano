import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class LaudasTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get data => dateTime().nullable()();
  TextColumn get texto => text().withLength(min: 1, max: 100000)();
  TextColumn get titulo => text().withLength(min: 1, max: 50)();

  TextColumn get corTexto => text().withLength(min: 1, max: 50)();
  TextColumn get corFundo => text().withLength(min: 1, max: 50)();
  RealColumn get tamanhoTexto => real()();
  RealColumn get velocidadeRolagem => real()();

  @override
  Set<Column> get primaryKey => {id};
}

@UseMoor(tables: [LaudasTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: true,
        )));

  @override
  int get schemaVersion => 1;

  Future<List<LaudasTableData>> getAllLaudas() => select(laudasTable).get();
  Stream<List<LaudasTableData>> watchAllLaudas() => select(laudasTable).watch();
  Future<int> insertLaudas(LaudasTableData data) =>
      into(laudasTable).insert(data);
  Future updateLaudas(LaudasTableData data) =>
      update(laudasTable).replace(data);
  Future deleteLaudas(LaudasTableData data) => delete(laudasTable).delete(data);
}
