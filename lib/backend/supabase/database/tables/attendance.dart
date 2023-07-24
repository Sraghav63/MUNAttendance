import '../database.dart';

class AttendanceTable extends SupabaseTable<AttendanceRow> {
  @override
  String get tableName => 'Attendance';

  @override
  AttendanceRow createRow(Map<String, dynamic> data) => AttendanceRow(data);
}

class AttendanceRow extends SupabaseDataRow {
  AttendanceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AttendanceTable();

  int get unique => getField<int>('Unique')!;
  set unique(int value) => setField<int>('Unique', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  String? get committee => getField<String>('Committee');
  set committee(String? value) => setField<String>('Committee', value);

  String? get country => getField<String>('Country');
  set country(String? value) => setField<String>('Country', value);

  bool? get sentAllotmentMail => getField<bool>('Sent allotment mail');
  set sentAllotmentMail(bool? value) =>
      setField<bool>('Sent allotment mail', value);

  String? get qRValue => getField<String>('QR Value');
  set qRValue(String? value) => setField<String>('QR Value', value);

  String? get qRLink => getField<String>('QR Link');
  set qRLink(String? value) => setField<String>('QR Link', value);

  bool? get sentQRMail => getField<bool>('Sent QR Mail');
  set sentQRMail(bool? value) => setField<bool>('Sent QR Mail', value);

  DateTime? get timeEntered => getField<DateTime>('Time Entered');
  set timeEntered(DateTime? value) => setField<DateTime>('Time Entered', value);

  bool? get attended => getField<bool>('Attended');
  set attended(bool? value) => setField<bool>('Attended', value);

  bool? get attended2atOmega => getField<bool>('Attended2atOmega');
  set attended2atOmega(bool? value) =>
      setField<bool>('Attended2atOmega', value);

  DateTime? get timentered2atOmega => getField<DateTime>('Timentered2atOmega');
  set timentered2atOmega(DateTime? value) =>
      setField<DateTime>('Timentered2atOmega', value);

  String? get delegegatetype => getField<String>('Delegegatetype');
  set delegegatetype(String? value) =>
      setField<String>('Delegegatetype', value);

  String? get delegationSchool => getField<String>('DelegationSchool');
  set delegationSchool(String? value) =>
      setField<String>('DelegationSchool', value);
}
