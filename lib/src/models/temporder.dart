import 'package:moor/moor.dart';

class Temporders extends Table {
  IntColumn get id => integer()();
  TextColumn get dishName => text().nullable()();
  IntColumn get price => integer().nullable()();
  IntColumn get quantity => integer().nullable()();
  IntColumn get noDishes => integer().nullable()();
  IntColumn get dishId => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
