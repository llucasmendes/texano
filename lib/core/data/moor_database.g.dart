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
  LaudasTableData(
      {@required this.id,
      this.data,
      @required this.texto,
      @required this.titulo});
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

class PreferenciasTableData extends DataClass
    implements Insertable<PreferenciasTableData> {
  final int id;
  final String corTexto;
  final String corFundo;
  final int tamanhoTexto;
  final int velocidadeRolagem;
  PreferenciasTableData(
      {@required this.id,
      @required this.corTexto,
      @required this.corFundo,
      @required this.tamanhoTexto,
      @required this.velocidadeRolagem});
  factory PreferenciasTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return PreferenciasTableData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      corTexto: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}cor_texto']),
      corFundo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}cor_fundo']),
      tamanhoTexto: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tamanho_texto']),
      velocidadeRolagem: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}velocidade_rolagem']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || corTexto != null) {
      map['cor_texto'] = Variable<String>(corTexto);
    }
    if (!nullToAbsent || corFundo != null) {
      map['cor_fundo'] = Variable<String>(corFundo);
    }
    if (!nullToAbsent || tamanhoTexto != null) {
      map['tamanho_texto'] = Variable<int>(tamanhoTexto);
    }
    if (!nullToAbsent || velocidadeRolagem != null) {
      map['velocidade_rolagem'] = Variable<int>(velocidadeRolagem);
    }
    return map;
  }

  PreferecniasTableCompanion toCompanion(bool nullToAbsent) {
    return PreferecniasTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      corTexto: corTexto == null && nullToAbsent
          ? const Value.absent()
          : Value(corTexto),
      corFundo: corFundo == null && nullToAbsent
          ? const Value.absent()
          : Value(corFundo),
      tamanhoTexto: tamanhoTexto == null && nullToAbsent
          ? const Value.absent()
          : Value(tamanhoTexto),
      velocidadeRolagem: velocidadeRolagem == null && nullToAbsent
          ? const Value.absent()
          : Value(velocidadeRolagem),
    );
  }

  factory PreferenciasTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PreferenciasTableData(
      id: serializer.fromJson<int>(json['id']),
      corTexto: serializer.fromJson<String>(json['corTexto']),
      corFundo: serializer.fromJson<String>(json['corFundo']),
      tamanhoTexto: serializer.fromJson<int>(json['tamanhoTexto']),
      velocidadeRolagem: serializer.fromJson<int>(json['velocidadeRolagem']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'corTexto': serializer.toJson<String>(corTexto),
      'corFundo': serializer.toJson<String>(corFundo),
      'tamanhoTexto': serializer.toJson<int>(tamanhoTexto),
      'velocidadeRolagem': serializer.toJson<int>(velocidadeRolagem),
    };
  }

  PreferenciasTableData copyWith(
          {int id,
          String corTexto,
          String corFundo,
          int tamanhoTexto,
          int velocidadeRolagem}) =>
      PreferenciasTableData(
        id: id ?? this.id,
        corTexto: corTexto ?? this.corTexto,
        corFundo: corFundo ?? this.corFundo,
        tamanhoTexto: tamanhoTexto ?? this.tamanhoTexto,
        velocidadeRolagem: velocidadeRolagem ?? this.velocidadeRolagem,
      );
  @override
  String toString() {
    return (StringBuffer('PreferecniasTableData(')
          ..write('id: $id, ')
          ..write('corTexto: $corTexto, ')
          ..write('corFundo: $corFundo, ')
          ..write('tamanhoTexto: $tamanhoTexto, ')
          ..write('velocidadeRolagem: $velocidadeRolagem')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          corTexto.hashCode,
          $mrjc(corFundo.hashCode,
              $mrjc(tamanhoTexto.hashCode, velocidadeRolagem.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PreferenciasTableData &&
          other.id == this.id &&
          other.corTexto == this.corTexto &&
          other.corFundo == this.corFundo &&
          other.tamanhoTexto == this.tamanhoTexto &&
          other.velocidadeRolagem == this.velocidadeRolagem);
}

class PreferecniasTableCompanion
    extends UpdateCompanion<PreferenciasTableData> {
  final Value<int> id;
  final Value<String> corTexto;
  final Value<String> corFundo;
  final Value<int> tamanhoTexto;
  final Value<int> velocidadeRolagem;
  const PreferecniasTableCompanion({
    this.id = const Value.absent(),
    this.corTexto = const Value.absent(),
    this.corFundo = const Value.absent(),
    this.tamanhoTexto = const Value.absent(),
    this.velocidadeRolagem = const Value.absent(),
  });
  PreferecniasTableCompanion.insert({
    this.id = const Value.absent(),
    @required String corTexto,
    @required String corFundo,
    @required int tamanhoTexto,
    @required int velocidadeRolagem,
  })  : corTexto = Value(corTexto),
        corFundo = Value(corFundo),
        tamanhoTexto = Value(tamanhoTexto),
        velocidadeRolagem = Value(velocidadeRolagem);
  static Insertable<PreferenciasTableData> custom({
    Expression<int> id,
    Expression<String> corTexto,
    Expression<String> corFundo,
    Expression<int> tamanhoTexto,
    Expression<int> velocidadeRolagem,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (corTexto != null) 'cor_texto': corTexto,
      if (corFundo != null) 'cor_fundo': corFundo,
      if (tamanhoTexto != null) 'tamanho_texto': tamanhoTexto,
      if (velocidadeRolagem != null) 'velocidade_rolagem': velocidadeRolagem,
    });
  }

  PreferecniasTableCompanion copyWith(
      {Value<int> id,
      Value<String> corTexto,
      Value<String> corFundo,
      Value<int> tamanhoTexto,
      Value<int> velocidadeRolagem}) {
    return PreferecniasTableCompanion(
      id: id ?? this.id,
      corTexto: corTexto ?? this.corTexto,
      corFundo: corFundo ?? this.corFundo,
      tamanhoTexto: tamanhoTexto ?? this.tamanhoTexto,
      velocidadeRolagem: velocidadeRolagem ?? this.velocidadeRolagem,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (corTexto.present) {
      map['cor_texto'] = Variable<String>(corTexto.value);
    }
    if (corFundo.present) {
      map['cor_fundo'] = Variable<String>(corFundo.value);
    }
    if (tamanhoTexto.present) {
      map['tamanho_texto'] = Variable<int>(tamanhoTexto.value);
    }
    if (velocidadeRolagem.present) {
      map['velocidade_rolagem'] = Variable<int>(velocidadeRolagem.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PreferecniasTableCompanion(')
          ..write('id: $id, ')
          ..write('corTexto: $corTexto, ')
          ..write('corFundo: $corFundo, ')
          ..write('tamanhoTexto: $tamanhoTexto, ')
          ..write('velocidadeRolagem: $velocidadeRolagem')
          ..write(')'))
        .toString();
  }
}

class $PreferecniasTableTable extends PreferenciasTable
    with TableInfo<$PreferecniasTableTable, PreferenciasTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PreferecniasTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _corTextoMeta = const VerificationMeta('corTexto');
  GeneratedTextColumn _corTexto;
  @override
  GeneratedTextColumn get corTexto => _corTexto ??= _constructCorTexto();
  GeneratedTextColumn _constructCorTexto() {
    return GeneratedTextColumn('cor_texto', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _corFundoMeta = const VerificationMeta('corFundo');
  GeneratedTextColumn _corFundo;
  @override
  GeneratedTextColumn get corFundo => _corFundo ??= _constructCorFundo();
  GeneratedTextColumn _constructCorFundo() {
    return GeneratedTextColumn('cor_fundo', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _tamanhoTextoMeta =
      const VerificationMeta('tamanhoTexto');
  GeneratedIntColumn _tamanhoTexto;
  @override
  GeneratedIntColumn get tamanhoTexto =>
      _tamanhoTexto ??= _constructTamanhoTexto();
  GeneratedIntColumn _constructTamanhoTexto() {
    return GeneratedIntColumn(
      'tamanho_texto',
      $tableName,
      false,
    );
  }

  final VerificationMeta _velocidadeRolagemMeta =
      const VerificationMeta('velocidadeRolagem');
  GeneratedIntColumn _velocidadeRolagem;
  @override
  GeneratedIntColumn get velocidadeRolagem =>
      _velocidadeRolagem ??= _constructVelocidadeRolagem();
  GeneratedIntColumn _constructVelocidadeRolagem() {
    return GeneratedIntColumn(
      'velocidade_rolagem',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, corTexto, corFundo, tamanhoTexto, velocidadeRolagem];
  @override
  $PreferecniasTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'preferecnias_table';
  @override
  final String actualTableName = 'preferecnias_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PreferenciasTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('cor_texto')) {
      context.handle(_corTextoMeta,
          corTexto.isAcceptableOrUnknown(data['cor_texto'], _corTextoMeta));
    } else if (isInserting) {
      context.missing(_corTextoMeta);
    }
    if (data.containsKey('cor_fundo')) {
      context.handle(_corFundoMeta,
          corFundo.isAcceptableOrUnknown(data['cor_fundo'], _corFundoMeta));
    } else if (isInserting) {
      context.missing(_corFundoMeta);
    }
    if (data.containsKey('tamanho_texto')) {
      context.handle(
          _tamanhoTextoMeta,
          tamanhoTexto.isAcceptableOrUnknown(
              data['tamanho_texto'], _tamanhoTextoMeta));
    } else if (isInserting) {
      context.missing(_tamanhoTextoMeta);
    }
    if (data.containsKey('velocidade_rolagem')) {
      context.handle(
          _velocidadeRolagemMeta,
          velocidadeRolagem.isAcceptableOrUnknown(
              data['velocidade_rolagem'], _velocidadeRolagemMeta));
    } else if (isInserting) {
      context.missing(_velocidadeRolagemMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PreferenciasTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PreferenciasTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PreferecniasTableTable createAlias(String alias) {
    return $PreferecniasTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $LaudasTableTable _laudasTable;
  $LaudasTableTable get laudasTable => _laudasTable ??= $LaudasTableTable(this);
  $PreferecniasTableTable _preferecniasTable;
  $PreferecniasTableTable get preferecniasTable =>
      _preferecniasTable ??= $PreferecniasTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [laudasTable, preferecniasTable];
}
