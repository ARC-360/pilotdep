import 'package:moor_flutter/moor_flutter.dart';

class Photos extends Table {
  IntColumn get id => integer()();
  TextColumn get image => text().nullable()();
  @override
  Set<Column> get primaryKey => {id};
}
