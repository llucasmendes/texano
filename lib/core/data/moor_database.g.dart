// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class LaudasTableData extends DataClass implements Insertable<LaudasTableData> {
  final int id;
  final DateTime data;
  final String texto;
  final String titulo;
  LaudasTableData({
    this.id,
    this.data,
    @required this.texto,
    @required this.titulo,
  });
  factory LaudasTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    return LaudasTableData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      data:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}data']),
      texto:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}texto']),
      titulo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}titulo']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || data != null) {
      map['data'] = Variable<DateTime>(data);
    }
    if (!nullToAbsent || texto != null) {
      map['texto'] = Variable<String>(texto);
    }
    if (!nullToAbsent || titulo != null) {
      map['titulo'] = Variable<String>(titulo);
    }
    return map;
  }

  LaudasTableCompanion toCompanion(bool nullToAbsent) {
    return LaudasTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      data: data == null && nullToAbsent ? const Value.absent() : Value(data),
      texto:
          texto == null && nullToAbsent ? const Value.absent() : Value(texto),
      titulo:
          titulo == null && nullToAbsent ? const Value.absent() : Value(titulo),
    );
  }

  factory LaudasTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return LaudasTableData(
      id: serializer.fromJson<int>(json['id']),
      data: serializer.fromJson<DateTime>(json['data']),
      texto: serializer.fromJson<String>(json['texto']),
      titulo: serializer.fromJson<String>(json['titulo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'data': serializer.toJson<DateTime>(data),
      'texto': serializer.toJson<String>(texto),
      'titulo': serializer.toJson<String>(titulo),
    };
  }

  LaudasTableData copyWith(
          {int id, DateTime data, String texto, String titulo}) =>
      LaudasTableData(
        id: id ?? this.id,
        data: data ?? this.data,
        texto: texto ?? this.texto,
        titulo: titulo ?? this.titulo,
      );
  @override
  String toString() {
    return (StringBuffer('LaudasTableData(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('texto: $texto, ')
          ..write('titulo: $titulo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(data.hashCode, $mrjc(texto.hashCode, titulo.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is LaudasTableData &&
          other.id == this.id &&
          other.data == this.data &&
          other.texto == this.texto &&
          other.titulo == this.titulo);
}

class LaudasTableCompanion extends UpdateCompanion<LaudasTableData> {
  final Value<int> id;
  final Value<DateTime> data;
  final Value<String> texto;
  final Value<String> titulo;
  const LaudasTableCompanion({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    this.texto = const Value.absent(),
    this.titulo = const Value.absent(),
  });
  LaudasTableCompanion.insert({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
    @required String texto,
    @required String titulo,
  })  : texto = Value(texto),
        titulo = Value(titulo);
  static Insertable<LaudasTableData> custom({
    Expression<int> id,
    Expression<DateTime> data,
    Expression<String> texto,
    Expression<String> titulo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (data != null) 'data': data,
      if (texto != null) 'texto': texto,
      if (titulo != null) 'titulo': titulo,
    });
  }

  LaudasTableCompanion copyWith(
      {Value<int> id,
      Value<DateTime> data,
      Value<String> texto,
      Value<String> titulo}) {
    return LaudasTableCompanion(
      id: id ?? this.id,
      data: data ?? this.data,
      texto: texto ?? this.texto,
      titulo: titulo ?? this.titulo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (data.present) {
      map['data'] = Variable<DateTime>(data.value);
    }
    if (texto.present) {
      map['texto'] = Variable<String>(texto.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LaudasTableCompanion(')
          ..write('id: $id, ')
          ..write('data: $data, ')
          ..write('texto: $texto, ')
          ..write('titulo: $titulo')
          ..write(')'))
        .toString();
  }
}

class $LaudasTableTable extends LaudasTable
    with TableInfo<$LaudasTableTable, LaudasTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  $LaudasTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _dataMeta = const VerificationMeta('data');
  GeneratedDateTimeColumn _data;
  @override
  GeneratedDateTimeColumn get data => _data ??= _constructData();
  GeneratedDateTimeColumn _constructData() {
    return GeneratedDateTimeColumn(
      'data',
      $tableName,
      true,
    );
  }

  final VerificationMeta _textoMeta = const VerificationMeta('texto');
  GeneratedTextColumn _texto;
  @override
  GeneratedTextColumn get texto => _texto ??= _constructTexto();
  GeneratedTextColumn _constructTexto() {
    return GeneratedTextColumn('texto', $tableName, false,
        minTextLength: 1, maxTextLength: 100000);
  }

  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  GeneratedTextColumn _titulo;
  @override
  GeneratedTextColumn get titulo => _titulo ??= _constructTitulo();
  GeneratedTextColumn _constructTitulo() {
    return GeneratedTextColumn('titulo', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  @override
  List<GeneratedColumn> get $columns => [id, data, texto, titulo];
  @override
  $LaudasTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'laudas_table';
  @override
  final String actualTableName = 'laudas_table';
  @override
  VerificationContext validateIntegrity(Insertable<LaudasTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data'], _dataMeta));
    }
    if (data.containsKey('texto')) {
      context.handle(
          _textoMeta, texto.isAcceptableOrUnknown(data['texto'], _textoMeta));
    } else if (isInserting) {
      context.missing(_textoMeta);
    }
    if (data.containsKey('titulo')) {
      context.handle(_tituloMeta,
          titulo.isAcceptableOrUnknown(data['titulo'], _tituloMeta));
    } else if (isInserting) {
      context.missing(_tituloMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LaudasTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return LaudasTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $LaudasTableTable createAlias(String alias) {
    return $LaudasTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $LaudasTableTable _laudasTable;
  $LaudasTableTable get laudasTable => _laudasTable ??= $LaudasTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [laudasTable];
}
