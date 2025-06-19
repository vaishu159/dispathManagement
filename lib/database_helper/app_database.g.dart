// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CustomerDetailsTable extends CustomerDetails
    with TableInfo<$CustomerDetailsTable, CustomerDetail> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerDetailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customer_details';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerDetail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CustomerDetail map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerDetail(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $CustomerDetailsTable createAlias(String alias) {
    return $CustomerDetailsTable(attachedDatabase, alias);
  }
}

class CustomerDetail extends DataClass implements Insertable<CustomerDetail> {
  final int id;
  final String name;
  const CustomerDetail({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  CustomerDetailsCompanion toCompanion(bool nullToAbsent) {
    return CustomerDetailsCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory CustomerDetail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CustomerDetail(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  CustomerDetail copyWith({int? id, String? name}) => CustomerDetail(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  CustomerDetail copyWithCompanion(CustomerDetailsCompanion data) {
    return CustomerDetail(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CustomerDetail(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomerDetail &&
          other.id == this.id &&
          other.name == this.name);
}

class CustomerDetailsCompanion extends UpdateCompanion<CustomerDetail> {
  final Value<int> id;
  final Value<String> name;
  const CustomerDetailsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  CustomerDetailsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<CustomerDetail> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  CustomerDetailsCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return CustomerDetailsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerDetailsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CustomerDetailsTable customerDetails =
      $CustomerDetailsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [customerDetails];
}

typedef $$CustomerDetailsTableCreateCompanionBuilder = CustomerDetailsCompanion
    Function({
  Value<int> id,
  required String name,
});
typedef $$CustomerDetailsTableUpdateCompanionBuilder = CustomerDetailsCompanion
    Function({
  Value<int> id,
  Value<String> name,
});

class $$CustomerDetailsTableFilterComposer
    extends Composer<_$AppDatabase, $CustomerDetailsTable> {
  $$CustomerDetailsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));
}

class $$CustomerDetailsTableOrderingComposer
    extends Composer<_$AppDatabase, $CustomerDetailsTable> {
  $$CustomerDetailsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$CustomerDetailsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CustomerDetailsTable> {
  $$CustomerDetailsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);
}

class $$CustomerDetailsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CustomerDetailsTable,
    CustomerDetail,
    $$CustomerDetailsTableFilterComposer,
    $$CustomerDetailsTableOrderingComposer,
    $$CustomerDetailsTableAnnotationComposer,
    $$CustomerDetailsTableCreateCompanionBuilder,
    $$CustomerDetailsTableUpdateCompanionBuilder,
    (
      CustomerDetail,
      BaseReferences<_$AppDatabase, $CustomerDetailsTable, CustomerDetail>
    ),
    CustomerDetail,
    PrefetchHooks Function()> {
  $$CustomerDetailsTableTableManager(
      _$AppDatabase db, $CustomerDetailsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CustomerDetailsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CustomerDetailsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CustomerDetailsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              CustomerDetailsCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              CustomerDetailsCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CustomerDetailsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CustomerDetailsTable,
    CustomerDetail,
    $$CustomerDetailsTableFilterComposer,
    $$CustomerDetailsTableOrderingComposer,
    $$CustomerDetailsTableAnnotationComposer,
    $$CustomerDetailsTableCreateCompanionBuilder,
    $$CustomerDetailsTableUpdateCompanionBuilder,
    (
      CustomerDetail,
      BaseReferences<_$AppDatabase, $CustomerDetailsTable, CustomerDetail>
    ),
    CustomerDetail,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CustomerDetailsTableTableManager get customerDetails =>
      $$CustomerDetailsTableTableManager(_db, _db.customerDetails);
}
