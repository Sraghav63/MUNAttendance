import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://enzygsiixtbqfmmhxour.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVuenlnc2lpeHRicWZtbWh4b3VyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODk0MjIzNjcsImV4cCI6MjAwNDk5ODM2N30.2ghVd1exfwRud6u5yQrGF5Zqz5V7GDO6zmx2PDvLIOY';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
