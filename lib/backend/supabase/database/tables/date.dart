import '../database.dart';

class DateTable extends SupabaseTable<DateRow> {
  @override
  String get tableName => 'date';

  @override
  DateRow createRow(Map<String, dynamic> data) => DateRow(data);
}

class DateRow extends SupabaseDataRow {
  DateRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DateTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get dateproper => getField<DateTime>('dateproper');
  set dateproper(DateTime? value) => setField<DateTime>('dateproper', value);
}
