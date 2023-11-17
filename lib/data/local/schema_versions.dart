import 'package:drift/internal/versioned_schema.dart' as i0;
import 'package:drift/drift.dart' as i1;
import 'package:drift/drift.dart'; // ignore_for_file: type=lint,unused_import

// GENERATED BY drift_dev, DO NOT MODIFY.
final class _S2 extends i0.VersionedSchema {
  _S2({required super.database}) : super(version: 2);
  @override
  late final List<i1.DatabaseSchemaEntity> entities = [
    profileEntries,
  ];
  late final Shape0 profileEntries = Shape0(
      source: i0.VersionedTable(
        entityName: 'profile_entries',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(id)',
        ],
        columns: [
          _column_0,
          _column_1,
          _column_2,
          _column_3,
          _column_4,
          _column_5,
          _column_6,
          _column_7,
          _column_8,
          _column_9,
          _column_10,
          _column_11,
          _column_12,
        ],
        attachedDatabase: database,
      ),
      alias: null);
}

class Shape0 extends i0.VersionedTable {
  Shape0({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<String> get id =>
      columnsByName['id']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<String> get type =>
      columnsByName['type']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<bool> get active =>
      columnsByName['active']! as i1.GeneratedColumn<bool>;
  i1.GeneratedColumn<String> get name =>
      columnsByName['name']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<String> get url =>
      columnsByName['url']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<DateTime> get lastUpdate =>
      columnsByName['last_update']! as i1.GeneratedColumn<DateTime>;
  i1.GeneratedColumn<int> get updateInterval =>
      columnsByName['update_interval']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<int> get upload =>
      columnsByName['upload']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<int> get download =>
      columnsByName['download']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<int> get total =>
      columnsByName['total']! as i1.GeneratedColumn<int>;
  i1.GeneratedColumn<DateTime> get expire =>
      columnsByName['expire']! as i1.GeneratedColumn<DateTime>;
  i1.GeneratedColumn<String> get webPageUrl =>
      columnsByName['web_page_url']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<String> get supportUrl =>
      columnsByName['support_url']! as i1.GeneratedColumn<String>;
}

i1.GeneratedColumn<String> _column_0(String aliasedName) =>
    i1.GeneratedColumn<String>('id', aliasedName, false,
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<String> _column_1(String aliasedName) =>
    i1.GeneratedColumn<String>('type', aliasedName, false,
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<bool> _column_2(String aliasedName) =>
    i1.GeneratedColumn<bool>('active', aliasedName, false,
        type: i1.DriftSqlType.bool,
        defaultConstraints: i1.GeneratedColumn.constraintIsAlways(
            'CHECK ("active" IN (0, 1))'));
i1.GeneratedColumn<String> _column_3(String aliasedName) =>
    i1.GeneratedColumn<String>('name', aliasedName, false,
        additionalChecks: i1.GeneratedColumn.checkTextLength(
          minTextLength: 1,
        ),
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<String> _column_4(String aliasedName) =>
    i1.GeneratedColumn<String>('url', aliasedName, true,
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<DateTime> _column_5(String aliasedName) =>
    i1.GeneratedColumn<DateTime>('last_update', aliasedName, false,
        type: i1.DriftSqlType.dateTime);
i1.GeneratedColumn<int> _column_6(String aliasedName) =>
    i1.GeneratedColumn<int>('update_interval', aliasedName, true,
        type: i1.DriftSqlType.int);
i1.GeneratedColumn<int> _column_7(String aliasedName) =>
    i1.GeneratedColumn<int>('upload', aliasedName, true,
        type: i1.DriftSqlType.int);
i1.GeneratedColumn<int> _column_8(String aliasedName) =>
    i1.GeneratedColumn<int>('download', aliasedName, true,
        type: i1.DriftSqlType.int);
i1.GeneratedColumn<int> _column_9(String aliasedName) =>
    i1.GeneratedColumn<int>('total', aliasedName, true,
        type: i1.DriftSqlType.int);
i1.GeneratedColumn<DateTime> _column_10(String aliasedName) =>
    i1.GeneratedColumn<DateTime>('expire', aliasedName, true,
        type: i1.DriftSqlType.dateTime);
i1.GeneratedColumn<String> _column_11(String aliasedName) =>
    i1.GeneratedColumn<String>('web_page_url', aliasedName, true,
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<String> _column_12(String aliasedName) =>
    i1.GeneratedColumn<String>('support_url', aliasedName, true,
        type: i1.DriftSqlType.string);

final class _S3 extends i0.VersionedSchema {
  _S3({required super.database}) : super(version: 3);
  @override
  late final List<i1.DatabaseSchemaEntity> entities = [
    profileEntries,
    geoAssetEntries,
  ];
  late final Shape0 profileEntries = Shape0(
      source: i0.VersionedTable(
        entityName: 'profile_entries',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(id)',
        ],
        columns: [
          _column_0,
          _column_1,
          _column_2,
          _column_3,
          _column_4,
          _column_5,
          _column_6,
          _column_7,
          _column_8,
          _column_9,
          _column_10,
          _column_11,
          _column_12,
        ],
        attachedDatabase: database,
      ),
      alias: null);
  late final Shape1 geoAssetEntries = Shape1(
      source: i0.VersionedTable(
        entityName: 'geo_asset_entries',
        withoutRowId: false,
        isStrict: false,
        tableConstraints: [
          'PRIMARY KEY(id)',
          'UNIQUE(name, provider_name)',
        ],
        columns: [
          _column_0,
          _column_1,
          _column_2,
          _column_3,
          _column_13,
          _column_14,
          _column_15,
        ],
        attachedDatabase: database,
      ),
      alias: null);
}

class Shape1 extends i0.VersionedTable {
  Shape1({required super.source, required super.alias}) : super.aliased();
  i1.GeneratedColumn<String> get id =>
      columnsByName['id']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<String> get type =>
      columnsByName['type']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<bool> get active =>
      columnsByName['active']! as i1.GeneratedColumn<bool>;
  i1.GeneratedColumn<String> get name =>
      columnsByName['name']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<String> get providerName =>
      columnsByName['provider_name']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<String> get version =>
      columnsByName['version']! as i1.GeneratedColumn<String>;
  i1.GeneratedColumn<DateTime> get lastCheck =>
      columnsByName['last_check']! as i1.GeneratedColumn<DateTime>;
}

i1.GeneratedColumn<String> _column_13(String aliasedName) =>
    i1.GeneratedColumn<String>('provider_name', aliasedName, false,
        additionalChecks: i1.GeneratedColumn.checkTextLength(
          minTextLength: 1,
        ),
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<String> _column_14(String aliasedName) =>
    i1.GeneratedColumn<String>('version', aliasedName, true,
        type: i1.DriftSqlType.string);
i1.GeneratedColumn<DateTime> _column_15(String aliasedName) =>
    i1.GeneratedColumn<DateTime>('last_check', aliasedName, true,
        type: i1.DriftSqlType.dateTime);
i0.MigrationStepWithVersion migrationSteps({
  required Future<void> Function(i1.Migrator m, _S2 schema) from1To2,
  required Future<void> Function(i1.Migrator m, _S3 schema) from2To3,
}) {
  return (currentVersion, database) async {
    switch (currentVersion) {
      case 1:
        final schema = _S2(database: database);
        final migrator = i1.Migrator(database, schema);
        await from1To2(migrator, schema);
        return 2;
      case 2:
        final schema = _S3(database: database);
        final migrator = i1.Migrator(database, schema);
        await from2To3(migrator, schema);
        return 3;
      default:
        throw ArgumentError.value('Unknown migration from $currentVersion');
    }
  };
}

i1.OnUpgrade stepByStep({
  required Future<void> Function(i1.Migrator m, _S2 schema) from1To2,
  required Future<void> Function(i1.Migrator m, _S3 schema) from2To3,
}) =>
    i0.VersionedSchema.stepByStepHelper(
        step: migrationSteps(
      from1To2: from1To2,
      from2To3: from2To3,
    ));
