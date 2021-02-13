import 'package:moor/moor.dart';

class Dishs extends Table {
  IntColumn get id => integer()();
  TextColumn get dishName => text().nullable()();
  IntColumn get quantity => integer().withDefault(Constant(0))();
  TextColumn get discription => text().nullable()();
  TextColumn get image => text().nullable()();
  IntColumn get price1 => integer().nullable()();
  IntColumn get price2 => integer().nullable()();
  IntColumn get portions => integer().nullable()();
  IntColumn get catId => integer().nullable()();
  
  IntColumn get sCatId => integer().nullable()();
  BoolColumn get isVeg => boolean().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
