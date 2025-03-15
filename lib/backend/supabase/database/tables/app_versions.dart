import '../database.dart';

class AppVersionsTable extends SupabaseTable<AppVersionsRow> {
  @override
  String get tableName => 'app_versions';

  @override
  AppVersionsRow createRow(Map<String, dynamic> data) => AppVersionsRow(data);
}

class AppVersionsRow extends SupabaseDataRow {
  AppVersionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AppVersionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get version => getField<String>('version')!;
  set version(String value) => setField<String>('version', value);

  DateTime get releaseDate => getField<DateTime>('release_date')!;
  set releaseDate(DateTime value) => setField<DateTime>('release_date', value);

  dynamic get content => getField<dynamic>('content')!;
  set content(dynamic value) => setField<dynamic>('content', value);
}
