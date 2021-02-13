import 'package:arc360menu/src/models/dish.dart';
import 'package:moor/moor.dart';

import '../moor_curd.dart';

part 'dish_curd.g.dart';

@UseDao(
  tables: [Dishs],
)
class DishsDao extends DatabaseAccessor<AppDatabase> with _$DishsDaoMixin {
  final AppDatabase db;
  DishsDao(this.db) : super(db);
  Future updateDish(Dish dish) => update(dishs).replace(dish);
  Future insertDish(Dish dish) => into(dishs).insert(dish);
  Future deleteDish(Dish dish) => delete(dishs).delete(dish);
  Future deleteAllDish() => delete(dishs).go();

  Future<List<Dish>> getAllDish() {
    return (select(db.dishs).get());
  }
  Stream<List<Dish>> watchAllDish() {
    return (select(db.dishs).watch());
  }

  Future<List<Dish>> getAllDishWithQuantity() {

    return (select(db.dishs)..where((t) => t.quantity.isBiggerThan(Variable(0)))).get();
    
  }

   
  Stream<List<Dish>> getAllDishByCatIdAndScatId({int catId,int sCatId}) {
    return (select(db.dishs)..where((t) => (t.catId.equals(catId))&(t.sCatId.equals(sCatId)))).watch();
  }
    Stream<List<Dish>> getAllDishByCatId({int catId }) {
    return (select(db.dishs)..where((t) => (t.catId.equals(catId)))).watch();
  }
}
