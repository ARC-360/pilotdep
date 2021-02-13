import 'package:moor/moor.dart';

class Menus extends Table {
  IntColumn get id => integer()();
  TextColumn get catName => text().nullable()();
  BoolColumn get hasSc => boolean().nullable()();
   @override
  Set<Column> get primaryKey => {id};

}
