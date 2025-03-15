import '../database.dart';

class LatestAppVersionTable extends SupabaseTable<LatestAppVersionRow> {
  @override
  String get tableName => 'latest_app_version';

  @override
  LatestAppVersionRow createRow(Map<String, dynamic> data) =>
      LatestAppVersionRow(data);
}

class LatestAppVersionRow extends SupabaseDataRow {
  LatestAppVersionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LatestAppVersionTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);

  DateTime? get releaseDate => getField<DateTime>('release_date');
  set releaseDate(DateTime? value) => setField<DateTime>('release_date', value);

  dynamic get content => getField<dynamic>('content');
  set content(dynamic value) => setField<dynamic>('content', value);
}
