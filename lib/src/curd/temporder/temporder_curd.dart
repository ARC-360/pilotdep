
import 'package:arc360menu/src/models/temporder.dart';
import 'package:moor/moor.dart';

import '../moor_curd.dart';

part 'temporder_curd.g.dart';

@UseDao(
  tables: [Temporders],
)
class  TemporderDao extends DatabaseAccessor<AppDatabase> with _$TemporderDaoMixin {
  final AppDatabase db;

  TemporderDao(this.db) : super(db);
  Future updateTemporder(Temporder temporder) => update(temporders).replace(temporder);
  Future insertTemporder(Temporder temporder) => into(temporders).insert(temporder);
  Future deleteTemporder(Temporder temporder) => delete(temporders).delete(temporder);
  Future deleteAllTemporder() =>delete(temporders).go();
  Stream<List<Temporder>> getAllIsubTemporder() {
    return (select(db.temporders).watch());
  }
  Stream<List<Temporder>> watchAllDishWithQuantity() {

    return (select(db.temporders)..where((t) => t.quantity.isBiggerThan(Variable(0)))).watch();
    
  }
  Future<List<Temporder>> getAllDishWithQuantity() {

    return (select(db.temporders)..where((t) => t.quantity.isBiggerThan(Variable(0)))).get();
    
  }
  Future<List<Temporder>> getAllDishes() {

    return (select(db.temporders)..where((t) => t.quantity.isBiggerThan(Variable(0)))).get();
    
  }
  Stream<List<Temporder>> getAllIsubTemporderById(int id) {
    return (select(db.temporders)..where((t)=>t.dishId.equals(id))).watch();
  }
   
}