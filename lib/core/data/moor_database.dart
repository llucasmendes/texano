import 'package:moor/ffi.dart';
import 'package:path/path.dart' as p;
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

part 'moor_database.g.dart';

class LaudasTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get data => dateTime().nullable()();
  TextColumn get texto => text().withLength(min: 1, max: 100000)();
  TextColumn get titulo => text().withLength(min: 1, max: 50)();

  @override
  Set<Column> get primaryKey => {id};
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String dbFolder = appDocDir.path;
    final file = File(p.join(dbFolder, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [LaudasTable])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

/*
{
  "id": 123,
  "titulo: "Dizem que o seu coração voa mais que avião",
  "conteudo": "So wakem e up when it is all over...",
  "data": SEI NAO
}
*/
