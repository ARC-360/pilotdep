import 'package:moor/moor.dart';

class Orders extends Table {
  
 IntColumn get  id => integer()();
 TextColumn get dishName => text().nullable()();
 IntColumn get price => integer().nullable()();
 IntColumn get portions => integer().nullable()();
 IntColumn get noDishes => integer().nullable()();
 IntColumn get dishId => integer().nullable()();
 DateTimeColumn get time => dateTime().nullable()();
   @override
  Set<Column> get primaryKey => {id};
}
