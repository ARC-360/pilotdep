
import 'package:arc360menu/src/models/order.dart';
import 'package:moor/moor.dart';

import '../moor_curd.dart';

part 'order_curd.g.dart';

@UseDao(
  tables: [Orders],
)
class  OrderDao extends DatabaseAccessor<AppDatabase> with _$OrderDaoMixin {
  final AppDatabase db;

  OrderDao(this.db) : super(db);
  Future updateOrder(Order order) => update(orders).replace(order);
  Future insertOrder(Order order) => into(orders).insert(order);
    Future deleteAllOrder() => delete(orders).go();
  Future deleteOrder(Order order) => delete(orders).delete(order);
  Future<Order> getAllDishById(int id) {

    return (select(db.orders)..where((t) => t.id.equals(id))).getSingle();
    
  }
  Stream<List<Order>> getAllIOrder() {
    return (select(db.orders).watch());
  }
}